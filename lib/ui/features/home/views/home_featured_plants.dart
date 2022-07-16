import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/featured_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/home/views/home_featured_plant_card.dart';

class HomeFeaturedPlants extends StatelessWidget {
  const HomeFeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FeaturedPlantListProvider>(
      builder: (context, featuredPlantListProvider, child) {
        return Consumer<PlantListProvider>(
          builder: (context, plantListProvider, child) {
            return Consumer<FavoritePlantListProvider>(
              builder: (context, favoritePlantListProvider, child) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: featuredPlantListProvider.plantIds.length,
                  itemBuilder: (context, index) {
                    String plantId = featuredPlantListProvider.plantIds[index];
                    Plant plant = plantListProvider.plants[plantId]!;
                    return HomeFeaturedPlantCard(
                      plant: plant,
                      onClickFavorite: () {
                        favoritePlantListProvider.togglePlantFavorite(plantId);
                      },
                      isPlantFavorite: favoritePlantListProvider.isPlantFavorite(plantId),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
