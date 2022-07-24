import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/basket_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/widgets/plant_image.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer3<PlantListProvider,FavoritePlantListProvider, CartPlantListProvider>(
      builder: (context, plantListProvider,favoritePlantListProvider, basketPlantListProvider, child) {
            String plantId = favoritePlantListProvider.plantIds[index];
            Plant plant = plantListProvider.plants[plantId]!;
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlantDetailsPage(
                      plant: plant,
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.only(bottom: defaultPadding),
                height: 180,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlantImage(plant: plant),
                    const SizedBox(
                      width: defaultPadding * 2,
                    ),
                    PlantInfo(
                      plant: plant,
                      plantId: plantId,
                      deleteIconOnPress: () {
                        favoritePlantListProvider.togglePlantFavorite(plantId);
                      },
                      addToBasketOntap: (){
                        basketPlantListProvider.addPlantOnCart(plantId);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
  }
}

class PlantInfo extends StatelessWidget {
  const PlantInfo({
    Key? key,
    required this.plant,
    required this.plantId,
    required this.deleteIconOnPress, required this.addToBasketOntap,
  }) : super(key: key);

  final Plant plant;
  final String plantId;
  final void Function() deleteIconOnPress;
  final void Function() addToBasketOntap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          plant.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Text(
          '\$\t\t${plant.price}',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        Text(
          'Country: ${plant.country}',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            InkWell(
              onTap: addToBasketOntap,
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
            IconButton(
              onPressed: deleteIconOnPress,
              icon: const Icon(
                FontAwesomeIcons.trashCan,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
