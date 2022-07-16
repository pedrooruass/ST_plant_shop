import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<PlantListProvider>(
        builder: (context, plantListProvider, child) {
      return Consumer<FavoritePlantListProvider>(
          builder: (context, favoritePlantListProvider, child) {
        String plantId = favoritePlantListProvider.plantIds[index];
        Plant plant = plantListProvider.plants[plantId]!;
        return Container(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          height: 180,
          // color: Colors.blue,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
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
                  width: plant.imageAsset == 'assets/images/bottom_img_1.png'
                      ? 170
                      : null,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: primaryColor.withOpacity(0.23),
                        offset: const Offset(-5, 5),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Image.asset(plant.imageAsset),
                ),
              ),
              const SizedBox(
                width: defaultPadding * 2,
              ),
              Column(
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
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.circleMinus,
                          color: secondaryColor,
                        ),
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.circlePlus,
                          color: secondaryColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          favoritePlantListProvider
                              .togglePlantFavorite(plantId);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.trashCan,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      });
    });
  }
}
