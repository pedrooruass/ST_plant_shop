import 'dart:math';

import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/widgets/favorite_plant_heart.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.plant,
    required this.onClickFavorite,
    required this.isPlantFavorite,
  }) : super(key: key);

  final Plant plant;
  final bool isPlantFavorite;
  final void Function() onClickFavorite;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => navigateToDetailPage(context),
      child: Container(
        margin: const EdgeInsets.all(defaultPadding - 5),
        width: screenSize.width * 0.4,
        height:
            max(100, screenSize.height * 0.1), // calcular o minimo screen size
        child: Column(
          children: [
            Expanded(
              child: PlantImage(
                  plant: plant,
                  onClickFavorite: onClickFavorite,
                  isPlantFavorite: isPlantFavorite),
            ),
            BottomInfo(plant: plant),
          ],
        ),
      ),
    );
  }

  navigateToDetailPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlantDetailsPage(
          plant: plant,
        ),
      ),
    );
  }
}

class PlantImage extends StatelessWidget {
  const PlantImage({
    Key? key,
    required this.plant,
    required this.onClickFavorite,
    required this.isPlantFavorite,
  }) : super(key: key);

  final Plant plant;
  final void Function() onClickFavorite;
  final bool isPlantFavorite;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(plant.imageAsset, fit: BoxFit.cover),
          Positioned(
            top: 0,
            right: 0,
            child: FavoritePlantHeart(
              onClickFavorite: onClickFavorite,
              isPlantFavorite: isPlantFavorite,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomInfo extends StatelessWidget {
  const BottomInfo({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: primaryColor.withOpacity(0.23),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${plant.name}\n'.toUpperCase(),
                  style: Theme.of(context).textTheme.button,
                ),
                TextSpan(
                  text: plant.country.toUpperCase(),
                  style: TextStyle(
                    color: primaryColor.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '\$${plant.price}',
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: primaryColor),
          ),
        ],
      ),
    );
  }
}
