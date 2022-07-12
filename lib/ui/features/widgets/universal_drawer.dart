import 'package:flutter/material.dart';

class UniversalDrawer extends StatelessWidget {
  const UniversalDrawer({
    Key? key,
    required this.drawerBackgroundColor,
  }) : super(key: key);

  final Color drawerBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: drawerBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
        ),
      ),
    );
  }
}
