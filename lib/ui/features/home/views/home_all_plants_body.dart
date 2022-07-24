import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/widgets/plant_card.dart';

class HomeAllPlantsBody extends StatelessWidget {
  const HomeAllPlantsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer3<PlantListProvider, FavoritePlantListProvider,
            CartPlantListProvider>(
        builder: (context, plantListProvider, favoritePlantListProvider,
            basketPlantListProvider, child) {
      // return Container()
      return GridView.builder(
        // padding: const EdgeInsets.all(defaultPadding / 5 + 4),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ),
        itemCount: plantListProvider.plants.length,
        itemBuilder: (context, index) {
          Plant plant = plantListProvider.plants.values.toList()[index];
          return PlantCard(
            plant: plant,
            isPlantFavorite:
                favoritePlantListProvider.isPlantFavorite(plant.id),
            onClickFavorite: () {
              favoritePlantListProvider.togglePlantFavorite(plant.id);
            },
            isOnCart: basketPlantListProvider.isPlantOnCart(plant.id),
            onClickCart: () {
              basketPlantListProvider.togglePlantOnCart(plant.id);
            },
          );
        },
      );
    });
  }
}
