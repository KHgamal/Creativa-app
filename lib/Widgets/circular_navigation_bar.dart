import 'package:creativa_courses_app/Pages/about_us_page.dart';
import 'package:creativa_courses_app/features/profile/Presentation/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';

import '../Pages/notifications_page.dart';
import '../constants.dart';
import '../features/Courses/Presentation/views/courses.dart';
import '../features/Home/presentation/views/home.dart';
import '../themes.dart';

class CircularNavigationBar extends StatefulWidget {
  const CircularNavigationBar({super.key});

  @override
  State<CircularNavigationBar> createState() => _CircularNavigationBarState();
}

class _CircularNavigationBarState extends State<CircularNavigationBar> {
  final _controller = PersistentTabController(initialIndex: 0);
  Color activeColorPrimary = blue;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => DarkThemeProvider(),
        builder: (context, child) {
          return PersistentTabView(
            context,
            controller: _controller,
            screens: const [
              HomePage(),
              NotificationsPage(),
              ProfilePage(),
              CoursesView(),
              AboutUs(),
            ],
            items: [
              PersistentBottomNavBarItem(
                icon: const Icon(Icons.home),
                title: 'Home',
                activeColorSecondary: Colors.white,
                activeColorPrimary: activeColorPrimary,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(Icons.notifications),
                title: 'notifications',
                activeColorSecondary: Colors.white,
                activeColorPrimary: activeColorPrimary,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(
                  Icons.person,
                ),
                title: 'profile',
                activeColorSecondary: Colors.white,
                activeColorPrimary: activeColorPrimary,
                inactiveColorPrimary: CupertinoColors.systemGrey,
                //inactiveColorSecondary: Colors.purple,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(
                  Icons.list_rounded,
                ),
                title: 'My Course',
                activeColorSecondary: Colors.white,
                activeColorPrimary: activeColorPrimary,
                inactiveColorPrimary: CupertinoColors.systemGrey,
                //inactiveColorSecondary: Colors.purple,
              ),
              PersistentBottomNavBarItem(
                icon: const Icon(FontAwesomeIcons.circleInfo),
                title: 'about us',
                activeColorSecondary: Colors.white,
                activeColorPrimary: activeColorPrimary,
                //CupertinoColors.activeBlue,
                inactiveColorPrimary: CupertinoColors.systemGrey,
              ),
            ],
            confineInSafeArea: true,
            backgroundColor: Provider.of<DarkThemeProvider>(context).isSwitched
                ? Colors.grey.shade900
                : Colors.white,
            resizeToAvoidBottomInset: true,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: <BoxShadow>[
                const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0.0, 0.75)),
              ],
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarStyle: NavBarStyle.style10,
          );
        });

    /*Scaffold(
      body: PageView(
        controller: _controller,
        children: const <Widget>[
          HomePage(),
          Favourites(),
          NotificationsPage(),
          ProfilePage(),
          AboutUs(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        controller: _controller,
        items: const [
          RollingBottomBarItem(Icons.home, label: 'Home'),
          RollingBottomBarItem(
            Icons.star,
            label: 'favourites',
          ),
          RollingBottomBarItem(
            Icons.notifications,
            label: 'notifications',
          ),
          RollingBottomBarItem(Icons.person, label: 'profile'),
          RollingBottomBarItem(Icons.list, label: 'about us'),
        ],
        color: amber,
        activeItemColor: blue,
        enableIconRotation: true,
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeOut,
          );
        },
      ),
    );*/
  }
}
