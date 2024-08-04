import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        final chat = statusList[index];
        return ListTile(
          leading: Image.network(chat.image),
          title: Text(chat.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          subtitle: Text(chat.mostRecentMessage,style: const TextStyle(color :Colors.black45,fontSize:16) ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(chat.messageDate,style: const TextStyle(color: Colors.black45),),
          ),
        );
      },);
  }
}