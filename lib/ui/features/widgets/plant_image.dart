
import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({
    Key? key,
    required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.23),
            offset: const Offset(-5, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: Image.asset(plant.imageAsset, fit: BoxFit.cover),
    );
  }
}