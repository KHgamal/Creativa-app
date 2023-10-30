import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:creativa_courses_app/Widgets/submit_button.dart';
import 'package:creativa_courses_app/constants.dart';
import 'package:creativa_courses_app/features/profile/Presentation/views/widgets/Interests_field.dart';
import 'package:creativa_courses_app/features/profile/Presentation/views/widgets/appbar_widget.dart';
import 'package:creativa_courses_app/features/profile/Presentation/views/widgets/profile_container.dart';
import 'package:creativa_courses_app/features/profile/Presentation/views/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ThemeSwitchingArea(
        child: Builder(
          builder: ((context) {
            return Scaffold(
              //backgroundColor: blue,
              appBar: buildAppBar(context),
              body: Padding(
                padding: const EdgeInsets.only(
                    // bottom: size.height * 0.1,
                    ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProfileWidget(
                        imagePath: 'assets/images/profile.jpg',
                        onClicked: () {},
                      ),
                      const SizedBox(height: 14),
                      buildName('Rahma Gamal', 'khokha@gmail.com'),
                      const SizedBox(height: 14),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return ProfileContainer(
                            icon: icons[index],
                            text: title[index],
                          );
                        },
                        itemCount: icons.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                          /*SizedBox(
                            height: 10,
                          );*/
                        },
                        /*children: [
                          ProfileWidget(imagePath: 'assets/images/profile.jpg', onClicked: (){},),
                          const SizedBox(height: 24),
                          buildName('Rahma Gamal', 'khokha@gmail.com'),
                          const SizedBox(height: 24),
                          buildAbout('I am mobile application developer interesting in ather programming fields such as back end, debugging, IOT, and AI.\n I have studied mobile application, Gaming, Data structure, and algorithm.')
                        ],*/
                      ),
                      const Divider(),
                      const InterestsField(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 8),
                        child: SubmitButton(
                          width: size.width * 0.8,
                          text: "Edit Profile",
                          onPressed: () {},
                          color1: blue.withOpacity(0.3),
                          color2: blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget buildName(String name, String email) => Column(
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(String about) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
