import 'package:flutter/material.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/recommended_plant_card.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RecommendedPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Guatemala',
            price: 440,
          ),
          RecommendedPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Peru',
            price: 450,
          ),
          RecommendedPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Maria',
            country: 'Brazil',
            price: 460,
          ),
        ],
      ),
    );
  }
}
