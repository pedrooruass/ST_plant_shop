import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    Key? key,
    required this.plant,
    required this.onClickFavorite,
    required this.isPlantFavorite,
  }) : super(key: key);

  final Plant plant;
  final bool isPlantFavorite;
  // final bool isPlantHorizontal;
  final void Function() onClickFavorite;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding * 2.5,
          right: defaultPadding),
      width: size.width * 0.4,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(plant.imageAsset),
              IconButton(
                onPressed: onClickFavorite,
                icon: Icon(
                  isPlantFavorite ? Icons.favorite : Icons.favorite_border,
                  color: secondaryColor,
                  size: 25,
                ),
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
    );
  }
}

// create a new class, being horizontal

// class PlantCardHorizontal extends PlantCard {
//   PlantCardHorizontal(
//       {required Plant plant,
//       required void Function() onClickFavorite,
//       required bool isPlantFavorite})
//       : super(
//             plant: plant,
//             onClickFavorite: onClickFavorite,
//             isPlantFavorite: isPlantFavorite);
      
// }
// TODO how to do different layouts of the same widget
