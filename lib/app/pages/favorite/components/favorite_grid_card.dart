import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/plants_list.dart';

class FavoriteGridCard extends StatelessWidget {
  const FavoriteGridCard({
    Key? key,
    required this.index,
    required this.plantList,
  }) : super(key: key);

  final int index;
  final PlantList plantList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 8,
        bottom: 8,
        top: 8,
      ), // PT 2 kakakakka
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.23),
            offset: const Offset(-10, 15),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8.0,
              bottom: 8.0,
            ),
            child: SizedBox(
              width: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plantList.favoritePlants()[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    plantList.favoritePlants()[index].country,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$${plantList.favoritePlants()[index].price}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: 95,
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  plantList.favoritePlants()[index].imageAsset,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {},
              alignment: Alignment.topRight,
              icon: const Icon(
                Icons.remove,
                color: secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
