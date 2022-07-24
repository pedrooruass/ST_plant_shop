import 'package:flutter/material.dart';
import 'package:training_app_clean/application/providers/basket_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/widgets/plant_card.dart';

class HorizontalPlantCardList extends StatelessWidget {
  const HorizontalPlantCardList({
    Key? key,
    required this.plantListIds,
    required this.plantListProvider,
    required this.favoritePlantListProvider, required this.basketPlantListProvider,
  }) : super(key: key);

  final List<String> plantListIds;
  final PlantListProvider plantListProvider;
  final FavoritePlantListProvider favoritePlantListProvider;
  final CartPlantListProvider basketPlantListProvider;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: plantListIds.length,
      itemBuilder: (context, index) {
        String plantId = plantListIds[index];
        Plant plant = plantListProvider.plants[plantId]!;
        return PlantCard(
          plant: plant,
          isPlantFavorite: favoritePlantListProvider.isPlantFavorite(plantId),
          onClickFavorite: () {
            favoritePlantListProvider.togglePlantFavorite(plantId);
          },
          isOnCart: basketPlantListProvider.isPlantOnCart(plantId),
          onClickCart: () {
            basketPlantListProvider.togglePlantOnCart(plantId);
          },
        );
      },
    );
  }
}
