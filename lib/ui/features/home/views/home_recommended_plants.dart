import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/application/providers/recommended_plant_list_provider.dart';
import 'package:training_app_clean/ui/features/widgets/horizontal_plant_list.dart';

class HomeRecommendedPlants extends StatelessWidget {
  const HomeRecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer3<RecommendedPlantListProvider, PlantListProvider,
        FavoritePlantListProvider>(
      builder: (context, recommendedPlantListProvider, plantListProvider,
          favoritePlantListProvider, child) {
        return SizedBox(
          height: 280,
          child: HorizontalPlantCardList(
            plantListIds: recommendedPlantListProvider.plantIds,
            plantListProvider: plantListProvider,
            favoritePlantListProvider: favoritePlantListProvider,
          ),
        );
      },
    );
  }
}

