import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
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
    return Consumer4<FeaturedPlantListProvider, PlantListProvider,
        FavoritePlantListProvider, CartPlantListProvider>(
      builder: (context, featuredPlantListProvider, plantListProvider,
          favoritePlantListProvider, basketPlantListProvider, child) {
        return SizedBox(
          height: 270,
          child: HorizontalPlantCardList(
            plantListIds: featuredPlantListProvider.plantIds,
            plantListProvider: plantListProvider,
            favoritePlantListProvider: favoritePlantListProvider,
            basketPlantListProvider: basketPlantListProvider,
          ),
        );
      },
    );
  }
}
