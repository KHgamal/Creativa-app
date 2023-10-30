import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:creativa_courses_app/themes.dart';
import 'package:flutter/material.dart';
import 'Pages/splash_screen.dart';
import 'constants.dart';
import 'features/Courses/Presentation/views/add_attatchment.dart';
import 'features/Courses/Presentation/views/tasks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        initTheme: MyThemes.lightTheme,
        builder: (context, myTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: myTheme,
            title: 'Creativa Courses',
            home:TasksFilesView(title:tasksInfo[0]['Title']!,deadLine:tasksInfo[0]['deadline']! ),
          );
        });
  }
}
