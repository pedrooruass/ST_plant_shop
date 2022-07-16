import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget {
  const BadgeIcon({Key? key, required this.badgeContent, required this.icon})
      : super(key: key);

  final String badgeContent;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Badge(
      animationType: BadgeAnimationType.scale,
      badgeContent: Text(
        badgeContent,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      child: Icon(icon),  
    );
  }
}
