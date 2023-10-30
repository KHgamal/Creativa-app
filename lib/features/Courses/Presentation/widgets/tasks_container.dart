import 'package:flutter/material.dart';

import '../../../../constants.dart';
class TasksContainer extends StatelessWidget {
  const TasksContainer({Key? key, required this.title, required this.deadLine, required this.status, required this.color}) : super(key: key);
  final String title;
  final String deadLine;
  final String status;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title , style: TextStyle(fontWeight: FontWeight.bold , color: blue),),
                  const SizedBox(height: 3,),
                  Text("Deadline $deadLine" ),
                ],
              ) ,
              leading:CircleAvatar(
                backgroundColor:pink ,
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.event_note ,)) ,
                  trailing: const Icon(Icons.more_vert),
            ),
            const Divider(color: Colors.grey,thickness: 1,),
            const SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  const Text("Assignment Status : ",style:TextStyle(fontWeight: FontWeight.bold) ,),
                  Text(status,style:TextStyle(color: color) ,),
                ],
              ),
            ),
            const SizedBox(height:5,),
          ],
        ),
      ),
    );
  }
}
