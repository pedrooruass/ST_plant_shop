import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/ui/features/category/screens/category_screen.dart';
import 'package:training_app_clean/ui/features/favorites/favorites_screen.dart';
import 'package:training_app_clean/ui/features/home/screens/home_screen.dart';
import 'package:training_app_clean/ui/features/main/views/bottom_nav_bar.dart';
import 'package:training_app_clean/ui/features/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
          HomeScreen(),
          CategoryScreen(),
          FavoritesScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Consumer<FavoritePlantListProvider>(
        builder: (context, favoritePlantListProvider, child) {
          return BottomNavBar(
            onTap: (index) {
              setState(() {
                currentBottomNavIndex = index;
                pageController.jumpToPage(index);
              });
            },
            currentBottomNavIndex: currentBottomNavIndex,
            badgeContent:
                favoritePlantListProvider.plantIds.length.toString(),
          );
        },
      ),
    );
  }
}
