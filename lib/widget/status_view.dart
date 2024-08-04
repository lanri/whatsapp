import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/models/status.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        final status = statusList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 58,
            color: Colors.black,
          ),
          title: Text(status.name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          subtitle: Text(status.statusDate,style: const TextStyle(color :Colors.black45,fontSize:16) ),
        );
      },);
  }
}