import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/plants_list.dart';
import 'package:training_app_clean/app/pages/category/category_page.dart';
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
          CategoryPage(),
          FavoritesPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: Consumer<PlantList>(
        builder: (context, plantList, index) {
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
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Icon(
                      FontAwesomeIcons.heart,
                    ),
                    Positioned(
                      right: -9,
                      top: -9,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text(
                          '${plantList.favoritePlants().length}',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                activeIcon: const Icon(FontAwesomeIcons.solidHeart),
                label: 'Favorites',
                backgroundColor: secondaryColor,
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
      ),
    );
  }
}
