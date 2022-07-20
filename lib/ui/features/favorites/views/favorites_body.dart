import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/ui/features/favorites/views/favorite_card.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<FavoritePlantListProvider>(
        builder: (
          BuildContext context,
          FavoritePlantListProvider favoritePlantListProvider,
          Widget? child,
        ) {
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: favoritePlantListProvider.plantIds.length,
                itemBuilder: (context, index) {
                  return FavoriteCard(
                    index: index,
                  );
                },
              ),
              AddToCart(
                plantIdsLength: favoritePlantListProvider.plantIds.length,
              ),
            ],
          );
        },
      ),
    );
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.plantIdsLength,
  }) : super(key: key);
  final int plantIdsLength;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 250,
        margin: const EdgeInsets.only(bottom: defaultPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: plantIdsLength > 3
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 35,
                    offset: const Offset(0, 75),
                    spreadRadius: 90,
                  )
                ]
              : null,
        ),
        child: const Text(
          'add to cart',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
