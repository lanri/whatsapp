import 'package:flutter/material.dart';
import 'package:whatsapp/models/call.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final call = callList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 58,
            color: Colors.black,
          ),
          title: Text(call.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          subtitle: Text(call.statusDate,style: const TextStyle(color :Colors.black45,fontSize:16) ),
          trailing: const Icon(Icons.call,size: 28,color: Colors.green,),
        );
      },);
  }
}