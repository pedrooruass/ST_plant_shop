import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/basket_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/ui/features/favorites/views/favorite_card.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class FavoritesBody extends StatelessWidget {
  const FavoritesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<FavoritePlantListProvider, CartPlantListProvider>(
      builder: (
        BuildContext context,
        FavoritePlantListProvider favoritePlantListProvider,
        CartPlantListProvider basketPlantListProvider,
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
            AddAllToCart(
              onTap: (){
                for(int i = 0; i < favoritePlantListProvider.plantIds.length; i++){
                  basketPlantListProvider.addPlantOnCart(favoritePlantListProvider.plantIds[i]);
                }
                // basketPlantListProvider.addPlantOnBasket(plantId);
              },
              plantIdsLength: favoritePlantListProvider.plantIds.length,
            ),
          ],
        );
      },
    );
  }
}

class AddAllToCart extends StatelessWidget {
  const AddAllToCart({
    Key? key,
    required this.plantIdsLength, required this.onTap,
  }) : super(key: key);
  final int plantIdsLength;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 250,
        margin: const EdgeInsets.only(bottom: defaultPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding / 2),
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
          'add all to cart',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
