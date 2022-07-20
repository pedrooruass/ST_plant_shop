import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/favorites/views/favorites_body.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/widgets/custom_app_bar.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: primaryColor,
        title: 'Favorites',
        haveCart: true,
      ),
      body: const FavoritesBody(),
    );
  }
}
