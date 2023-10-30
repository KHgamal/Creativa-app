import 'package:flutter/material.dart';

import 'class_container.dart';

class CoursesBody extends StatelessWidget {
  const CoursesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Joined Courses',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4, // Replace with the desired number of containers
            itemBuilder: (BuildContext context, int index) {
              return ContainerItem(
                index: index,
              );
            },
          ),
        ),
      ],
    );

    /*Padding(
      padding: const EdgeInsets.only(
        top: 30,
        right: 16,
        left: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Joined courses'),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: CourseItem(index: index),
                  );
                }),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );*/
  }
}
