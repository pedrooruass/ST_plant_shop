import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/favorite/favorites_page.dart';
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
          FavoritesPage(),
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
        iconSize: 25,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            activeIcon: Icon(FontAwesomeIcons.leaf),
            label: 'Home',
            backgroundColor: primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            activeIcon: Icon(FontAwesomeIcons.solidHeart),
            label: 'Liked',
            backgroundColor: secondaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            activeIcon: Icon(FontAwesomeIcons.userTie),
            label: 'Profile',
            backgroundColor: primaryColor,
          ),
        ],
      ),
    );
  }
}
