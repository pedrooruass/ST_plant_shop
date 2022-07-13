import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/featured_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/application/providers/recommended_plant_list_provider.dart';
import 'package:training_app_clean/ui/features/screens/category/category_screen.dart';
import 'package:training_app_clean/ui/features/screens/favorites/favorites_screen.dart';
import 'package:training_app_clean/ui/features/screens/home/home_screen.dart';
import 'package:training_app_clean/ui/features/screens/profile/profile_screen.dart';
import 'package:training_app_clean/ui/features/widgets/badge_icon.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlantListProvider()),
        ChangeNotifierProvider(
            create: (context) => FavoritePlantListProvider()),
        ChangeNotifierProvider(
            create: (context) => RecommendedPlantListProvider()),
        ChangeNotifierProvider(
            create: (context) => FeaturedPlantListProvider()),
      ],
      child: Scaffold(
        key: scaffoldKey,
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            // SearchTry(),
            HomeScreen(),
            // Container(
            //   alignment: Alignment.center,
            //   child: const Text('home'),
            // ),
            CategoryScreen(),
            // Container(
            //   alignment: Alignment.center,
            //   child: const Text('category'),
            // ),
            FavoritesScreen(),
            // Container(
            //   alignment: Alignment.center,
            //   child: const Text('favorites'),
            // ),
            ProfileScreen(),
            // Container(
            //   alignment: Alignment.center,
            //   child: const Text('profile'),
            // ),
          ],
        ),
        bottomNavigationBar: Consumer<FavoritePlantListProvider>(
            builder: (context, favoritePlantListProvider, child) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: currentBottomNavIndex,
            onTap: (index) {
              setState(() {
                currentBottomNavIndex = index;
                pageController.jumpToPage(index);
              });
            },
            selectedFontSize: 15,
            iconSize: 30,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                activeIcon: Icon(FontAwesomeIcons.leaf),
                label: 'Home',
                backgroundColor: primaryColor,
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.category_outlined,
                ),
                activeIcon: Icon(FontAwesomeIcons.shapes),
                label: 'Category',
                backgroundColor: primaryColor,
              ),
              //Colocar plugin badges
              BottomNavigationBarItem(
                icon: BadgeIcon(
                  icon: Icons.favorite_border_outlined,
                  badgeContent:
                      favoritePlantListProvider.plantIds.length.toString(),
                ),
                activeIcon: BadgeIcon(
                  icon: FontAwesomeIcons.solidHeart,
                  badgeContent:
                      favoritePlantListProvider.plantIds.length.toString(),
                ),
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
        }),
      ),
    );
  }
}
