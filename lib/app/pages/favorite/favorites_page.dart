import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/components/universal_app_bar.dart';
import 'package:training_app_clean/app/pages/components/universal_drawer.dart';
import 'package:training_app_clean/app/pages/favorite/components/favorites_body.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: secondaryColor,
        title: 'Favorites',
        haveCart: true,
        
      ),
      body: const FavoritesBody(),
      drawer: const UniversalDrawer(
        drawerBackgroundColor: drawerColor2,
      ),
    );
  }
}
