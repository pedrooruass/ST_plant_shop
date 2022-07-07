import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/plants_list.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    Key? key,
    required this.index,
    required this.plantList,
  }) : super(key: key);

  final int index;
  final PlantList plantList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      height: 180,
      // color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: primaryColor.withOpacity(0.23),
                  offset: const Offset(-5, 5),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Image.asset(plantList.favoritePlants()[index].imageAsset),
          ),
          const SizedBox(
            width: defaultPadding * 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                plantList.favoritePlants()[index].name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                '\$\t\t${plantList.favoritePlants()[index].price}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Country: ${plantList.favoritePlants()[index].country}',
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
                      plantList.removeFavoritePlant(index);
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
  }
}
