import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/app/models/plants_list.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/recommended_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PlantList>(
      builder: (context, plantList, child) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return RecommendedCard(
              plant: plantList.plants[index],
              onClickFavorite: () {
                plantList.togglePlantFavorite(index);
              },
            );
          },
          itemCount: plantList.plants.length,
        );
      },
    );
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) {
    //     return plants[index];
    //   },
    // );
  }
}
