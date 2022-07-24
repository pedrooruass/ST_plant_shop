import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/basket_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/ui/features/widgets/favorite_plant_heart.dart';
import 'package:training_app_clean/ui/features/widgets/plant_image.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CategoryPlantCard extends StatelessWidget {
  const CategoryPlantCard({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PlantDetailsPage(plant: plant),
          ),
        );
      },
      child: Container(
        height: 158,
        padding: const EdgeInsets.all(defaultPadding / 2),
        margin: const EdgeInsets.only(bottom: defaultPadding / 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(defaultPadding / 2),
              child: PlantImage(plant: plant),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PlantInfo(plant: plant),
                const Spacer(),
                AddToCartAndFavorite(
                  plant: plant,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PlantInfo extends StatelessWidget {
  const PlantInfo({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          plant.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          '\$\t\t${plant.price}',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        Text(
          'Country: ${plant.country}',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ],
    );
  }
}

class AddToCartAndFavorite extends StatelessWidget {
  const AddToCartAndFavorite({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Consumer2<FavoritePlantListProvider, CartPlantListProvider>(
        builder: (context, favoritePlantListProvider, basketPlantListProvider,
            child) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              basketPlantListProvider.addPlantOnCart(plant.id);
            },
            child: Container(
              height: 40,
              width: 130,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultPadding / 2),
                ),
              ),
              child: const Text(
                'add to cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          FavoritePlantHeart(
            isPlantFavorite:
                favoritePlantListProvider.isPlantFavorite(plant.id),
            onClickFavorite: () {
              favoritePlantListProvider.togglePlantFavorite(plant.id);
            },
            size: 30,
          ),
        ],
      );
    });
  }
}
