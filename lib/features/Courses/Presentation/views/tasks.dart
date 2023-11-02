import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../widgets/tasks_container.dart';
class TasksView extends StatelessWidget {
  const TasksView({Key? key, required this.title,required this.image}) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            title:  Text(title , style: const TextStyle(color :Colors.black),),
            flexibleSpace:  Image(
              image: AssetImage(image),
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
