import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/widgets/plant_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key? key,
    required this.plantName,
  }) : super(key: key);
  final String plantName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<PlantListProvider>(
          builder: (context, plantListProvider, child) {
        return Consumer<FavoritePlantListProvider>(
            builder: (context, favoritePlantListProvider, child) {
          return ListView.builder(
            itemCount: plantListProvider.searchPlants(plantName).length,
            itemBuilder: (context, index) {
              Plant plant = plantListProvider.searchPlants(plantName)[index];
              return PlantCard(
                  plant: plant,
                  isPlantFavorite:
                      favoritePlantListProvider.isPlantFavorite(plant.id),
                  onClickFavorite: () {
                    favoritePlantListProvider.togglePlantFavorite(plant.id);
                  });
            },
          );
        });
      }),
    );
  }
}
