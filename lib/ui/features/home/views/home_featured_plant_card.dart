import 'package:flutter/material.dart';

import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
import 'package:training_app_clean/ui/features/widgets/favorite_plant_heart.dart';

class HomeFeaturedPlantCard extends StatelessWidget {
  const HomeFeaturedPlantCard({
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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: SizedBox(
        width: size.width * 0.7,
        height: 300,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  plant.imageAsset,
                  fit: BoxFit.fitWidth,
                ),
                FavoritePlantHeart(
                  onClickFavorite: onClickFavorite,
                  isPlantFavorite: isPlantFavorite,
                ),
              ],
            ),
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
                padding: const EdgeInsets.all(defaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
