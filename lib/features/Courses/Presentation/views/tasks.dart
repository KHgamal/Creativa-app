import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../widgets/tasks_container.dart';
class TasksView extends StatelessWidget {
  const TasksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            title: const Text("Front End" , style: TextStyle(color :Colors.black),),
            flexibleSpace: const Image(
              image: AssetImage('assets/images/course1.jpg'),
              fit: BoxFit.fitWidth,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        body:  SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: tasksInfo.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16, vertical: 16),
                child: TasksContainer(deadLine:tasksInfo[index]['deadline']!,
                status:tasksInfo[index]['status']!,
                title: tasksInfo[index]['Title']!,
                color: tasksInfo[index]['status']=='finished'? Colors.green:Colors.red,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
