import 'package:creativa_courses_app/features/Courses/Presentation/widgets/course_body.dart';
import 'package:creativa_courses_app/features/Courses/Presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatelessWidget {
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100), child: CustomAppBar()),
        body: CoursesBody(),
      ),
    );
  }
}
