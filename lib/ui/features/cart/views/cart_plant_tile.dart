import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_add_sub_quantity.dart';

class CartPlantTile extends StatelessWidget {
  const CartPlantTile({
    Key? key,
    required this.imageAsset,
    required this.plantName,
    required this.country,
    required this.price,
    required this.removeCartPlantOnPressed,
  }) : super(key: key);

  final String imageAsset, plantName, country;
  final double price;
  final void Function() removeCartPlantOnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding - 5),
      height: 85,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: defaultPadding),
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding / 4),
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("plantListProvider.plants[index]!.name"),
              Text(
                plantName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(country),
              const Spacer(),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: removeCartPlantOnPressed,
                icon: const Icon(
                  FontAwesomeIcons.x,
                  size: 12,
                ),
              ),
              const CartAddSubQuantity(),
            ],
          ),
        ],
      ),
    );
  }
}
