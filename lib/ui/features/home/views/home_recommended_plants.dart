import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/application/providers/recommended_plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/widgets/plant_card.dart';

class HomeRecommendedPlants extends StatelessWidget {
  const HomeRecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RecommendedPlantListProvider>(
      builder: (context, recommendedPlantListProvider, child) {
        return Consumer<PlantListProvider>(
          builder: (context, plantListProvider, child) {
            return Consumer<FavoritePlantListProvider>(
              builder: (context, favoritePlantListProvider, child) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendedPlantListProvider.plantIds.length,
                  itemBuilder: (context, index) {
                    String plantId =
                        recommendedPlantListProvider.plantIds[index];
                    Plant plant = plantListProvider.plants[plantId]!;
                    return SizedBox(
                      height: 150,
                      child: PlantCard(
                        plant: plant,
                        isPlantFavorite:
                            favoritePlantListProvider.isPlantFavorite(plantId),
                        onClickFavorite: () {
                          favoritePlantListProvider.togglePlantFavorite(plantId);
                        },
                      ),
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
