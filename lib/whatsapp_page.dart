import 'package:flutter/material.dart';
import 'package:whatsapp/widget/call_view.dart';
import 'package:whatsapp/widget/chat_view.dart';
import 'package:whatsapp/widget/status_view.dart';

class WhatsappPage extends StatefulWidget {
  const WhatsappPage({super.key});

  @override
  State <WhatsappPage> createState() =>  WhatsappPageState();
}

class  WhatsappPageState extends State <WhatsappPage> with SingleTickerProviderStateMixin {
  var tabs = const [
  Tab(
    icon: Icon(Icons.camera_alt),
  ),
  Tab(
    text: "CHAT",
  ),
  Tab(
    text: "STATUS",
  ),
  Tab(
    text: "CALL",
  ),
  ];

  TabController? tabController;

  var fabIcon = Icons.message;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: tabs.length, vsync: this);
    tabController!.index = 1;
    tabController!.addListener(() {
      setState(() {
        switch (tabController!.index) {
        case 0:
          fabIcon = Icons.camera;
          break;
        case 1:
          fabIcon = Icons.message;
          break;
        case 2:
          fabIcon = Icons.camera_alt;
          break;
        case 3:
          fabIcon = Icons.call;
          break;  
      }
    },);
      }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 140, 126, 1.0),
        title: const Text('Whatsapp'),
        bottom: TabBar(
          tabs: tabs,
          controller : tabController,
        ),
      ),
      body: 
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/wa_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: TabBarView(
          controller: tabController,
          children: const [
            //CAMERA
            Icon(Icons.camera_alt),
        
            //CHAT
            ChatView(),
        
            //STATUS
            StatusView(),
        
            //CALLS
            CallView(),
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){},
        child: Icon(fabIcon),),
    );
  }
}