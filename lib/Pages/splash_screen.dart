import 'dart:async';

import 'package:creativa_courses_app/Pages/login_page.dart';
import 'package:creativa_courses_app/Widgets/submit_button.dart';
import 'package:creativa_courses_app/constants.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  // ignore: unused_field
  late Timer _timer;
  bool _visible = true;
  bool finishFading = false;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      setState(() {
        finishFading = true;
      });
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _visible = !_visible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: AnimatedOpacity(
                // If the widget is visible, animate to 0.0 (invisible).
                // If the widget is hidden, animate to 1.0 (fully visible).
                opacity: _visible ? 0 : 1,
                duration: const Duration(milliseconds: 1000),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/Logo.png'),
                ),
              ),
            ),
            finishFading
                ? Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      SubmitButton(
                          text: "Student",
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ReplacementLoginScreen())),
                          color1: Colors.transparent,
                          border: Border.all(color: amber, width: 2.5),
                          textColor: const Color(0xff043a78),
                          color2: Colors.transparent,
                          width: size.width * 0.7),
                      const SizedBox(
                        height: 30,
                      ),
                      SubmitButton(
                          text: "Instructor",
                          onPressed: () {},
                          color1: Colors.transparent,
                          border: Border.all(color: amber, width: 2.5),
                          textColor: const Color(0xff043a78),
                          color2: Colors.transparent,
                          width: size.width * 0.7),
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
