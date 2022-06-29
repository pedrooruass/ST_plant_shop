import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/liked/liked_page.dart';
import 'package:training_app_clean/app/pages/profile/profile_page.dart';
import 'package:training_app_clean/app/pages/the_home_page/the_home_page.dart';

class PageChanger extends StatefulWidget {
  const PageChanger({Key? key}) : super(key: key);

  @override
  State<PageChanger> createState() => _PageChangerState();
}

class _PageChangerState extends State<PageChanger> {
  final pageController = PageController(initialPage: 0);

  int currentBottomNavIndex = 0;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          TheHomePage(),
          LikedPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentBottomNavIndex,
        onTap: (index) {
          setState(() {
            currentBottomNavIndex = index;
            pageController.jumpToPage(index);
          });
        },
        selectedFontSize: 15,
        unselectedFontSize: 13,
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.fan, color: Colors.white),
            label: 'Home',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
            label: 'Liked',
            backgroundColor: secondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userTie, color: Colors.white),
            label: 'Profile',
            backgroundColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
