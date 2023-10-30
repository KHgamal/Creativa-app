import 'package:flutter/material.dart';




Color blue = const Color(0xFF2467AB);
Color amber = const Color(0xFFF8AF43);
Color pink = const Color(0xffb41c84);

Color white = Colors.white70;

List<String> categories = [
  'All',
  'Programing',
  'Design',
  'Marketing',
  'Data',
  'Networks'
];

List<Map<String, String>> courseInfo = [
  {
    'Title': 'Front End',
    'Description':
        'For all those interested in the field of programming and want to take an influential step in their professional lives.The program will help you learn the basics of Front-end Development'
           ,
    'Duration': '20 days in 2 months'
  },
  {
    'Title': 'Flutter Training',
    'Description':
        'You will start as a Flutter Developer in the Flutter Training Program.',
    'Duration': '16 days in a month'
  },
  {
    'Title': 'Software Testing',
    'Description':
        'Software Tester is one of the most in-demand jobs at the present time, and the demand for it is constantly increasing in the local and global labor market.However, it is one of the easiest fields that you can learn.',
    'Duration': '15 days in a month'
  },
  {
    'Title': 'Digital Marketing',
    'Description':
        'We offer all people who work Freelance in electronic marketing, as well as those who decided to become their field of work and cannot decide how to start!',
    'Duration': '6 days in a Week'
  }
];

List<Map<String, String>> tasksInfo = [
  {
    'Title': 'Task_1',
    'deadline': '30-10-2023',
    'status':'finished'
  },
  {
    'Title': 'Task_2',
    'deadline': '15-11-2023',
    'status':'unfinished'
  },
  {
    'Title': 'Task_3',
    'deadline': '11-11-2023',
    'status':'unfinished'
  },

];

var icons = [
  Icons.person_2,
  Icons.email_outlined,
  Icons.phone_android_rounded,
  Icons.info_outline,
  Icons.notifications_active_outlined,
  Icons.visibility_outlined,
];
var title = [
  'Rahma Gamal',
  'khokha@gmail.com',
  '01012234566',
  'ID',
  'Notifications',
  'Password'
];

List<Widget> favourites = [];
