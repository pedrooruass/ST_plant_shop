import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/screens/favorites/widgets/favorites_body.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
import 'package:training_app_clean/ui/features/widgets/universal_app_bar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
        title: 'Favorites',
        haveCart: true,
      ),
      body: const FavoritesBody(),
    );
  }
}
