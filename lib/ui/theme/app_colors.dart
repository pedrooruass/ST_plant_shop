import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF0C9869);
  static const textColor = Color(0xFF3C4046);
  static const white = Color(0xFFFFFFFF);
  static const basketBackgroundBasketScreen =
      Color.fromARGB(255, 208, 235, 209);
  static const unselectedCategoryColor = Color.fromARGB(255, 189, 156, 60);

  static final theme = ThemeData(
    primaryColor: primaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity, // ?
  );
}
