import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/featured_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/ui/features/widgets/horizontal_plant_list.dart';

class HomeFeaturedPlants extends StatelessWidget {
  const HomeFeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer3<FeaturedPlantListProvider, PlantListProvider,
        FavoritePlantListProvider>(
      builder: (context, featuredPlantListProvider, plantListProvider,
          favoritePlantListProvider, child) {
        return SizedBox(
          height: 280,
          child: HorizontalPlantCardList(
            plantListIds: featuredPlantListProvider.plantIds,
            plantListProvider: plantListProvider,
            favoritePlantListProvider: favoritePlantListProvider,
          ),
        );
      },
    );
  }
}
