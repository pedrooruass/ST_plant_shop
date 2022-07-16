import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/ui/features/widgets/badge_icon.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar(
      {Key? key,
      required this.currentBottomNavIndex,
      required this.onTap,
      required this.badgeContent})
      : super(key: key);
  final int currentBottomNavIndex;
  final Function(int) onTap;
  final String badgeContent;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: currentBottomNavIndex,
      onTap: onTap,
      selectedFontSize: 15,
      iconSize: 30,
      items: [
        const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(FontAwesomeIcons.leaf),
            label: 'Home',
            backgroundColor: primaryColor),
        const BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          activeIcon: Icon(FontAwesomeIcons.shapes),
          label: 'Category',
          backgroundColor: primaryColor,
        ),
        BottomNavigationBarItem(
          icon: BadgeIcon(
              icon: Icons.favorite_border_outlined, badgeContent: badgeContent),
          activeIcon: BadgeIcon(
              icon: FontAwesomeIcons.solidHeart, badgeContent: badgeContent),
          label: 'Favorites',
          backgroundColor: primaryColor,
        ),
        const BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          activeIcon: Icon(FontAwesomeIcons.userTie),
          label: 'Profile',
          backgroundColor: primaryColor,
        ),
      ],
    );
  }
}
