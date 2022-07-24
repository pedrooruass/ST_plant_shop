import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/application/providers/recommended_plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/category/views/category_plant_card.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;
  @override
  Widget build(BuildContext context) {
    return Consumer3<PlantListProvider, FavoritePlantListProvider,
        RecommendedPlantListProvider>(
      builder: (
        BuildContext context,
        PlantListProvider plantListProvider,
        FavoritePlantListProvider favoritePlantListProvider,
        RecommendedPlantListProvider recommendedPlantListProvider,
        Widget? child,
      ) {
        return ListView.builder(
          itemCount: plantListProvider
              .categoryPlant(
                category, // try to do like this, to make it grabbing the same value from the plant: plantListProvider.plants[index].categoryId
              )
              .length,
          itemBuilder: (context, index) {
            Plant plant = plantListProvider.categoryPlant(category)[index];
            return CategoryPlantCard(plant: plant);
          },
        );
      },
    );
  }
}