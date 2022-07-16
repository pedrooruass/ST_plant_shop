import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/application/providers/recommended_plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;
  @override
  Widget build(BuildContext context) {
    return Consumer<PlantListProvider>(builder: (BuildContext context,
        PlantListProvider plantListProvider, Widget? child) {
      return Consumer<FavoritePlantListProvider>(builder: (BuildContext context,
          FavoritePlantListProvider favoritePlantListProvider, Widget? child) {
        return Consumer<RecommendedPlantListProvider>(builder:
            (BuildContext context,
                RecommendedPlantListProvider recommendedPlantListProvider,
                Widget? child) {
          return ListView.builder(
            itemCount: plantListProvider
                .categoryPlant(
                  category, // try to do like this, to make it grabbing the same value from the plant: plantListProvider.plants[index].categoryId
                )
                .length,
            itemBuilder: (context, index) {
              Plant plant = plantListProvider.categoryPlant(category)[index];
              return Container(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                margin: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding / 2),
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 150,
                      child: Image.asset(plant.imageAsset),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plant.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.brown
                          ),
                        ),
                        Text(
                          '\$\t\t${plant.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.brown
                          ),
                        ),
                        Text(
                          'Country: ${plant.country}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.brown
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              );
            },
          );
        });
      });
    });
  }
}

/// Use this layout for the more pages, where it shows all the plants

// GridView.builder(
//             // padding: const EdgeInsets.all(defaultPadding / 5 + 4),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 0.65,
//             ),
//             itemCount: plantListProvider
//                 .categoryPlant(
//                   category, // try to do like this, to make it grabbing the same value from the plant: plantListProvider.plants[index].categoryId
//                 )
//                 .length,
//             itemBuilder: (context, index) {
//               // Plant plant = plantListProvider.plants[]!;
//               Plant plant = plantListProvider.categoryPlant(category)[index];
//               return PlantCard(
//                 plant: plant,
//                 isPlantFavorite:
//                     favoritePlantListProvider.isPlantFavorite(plant.id),
//                 onClickFavorite: () {
//                   favoritePlantListProvider.togglePlantFavorite(plant.id);
//                 },
//               );
//             },
//           );