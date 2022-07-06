import 'package:flutter/material.dart';
import 'package:training_app_clean/app/models/plant.dart';

class PlantList extends ChangeNotifier {
  final List<Plant> plants = [
    Plant(
      imageAsset: 'assets/images/image_1.png',
      name: 'Pedro',
      price: 350,
      country: 'Brasil',
    ),
    Plant(
      imageAsset: 'assets/images/image_2.png',
      name: 'Maria',
      price: 250,
      country: 'Canada',
    ),
    Plant(
      imageAsset: 'assets/images/image_3.png',
      name: 'Luan',
      price: 150,
      country: 'Guatemala',
    ),
  ];

  // Toggle is alternate something
  togglePlantFavorite(int index) {
    plants[index].isFavorite = !plants[index].isFavorite;
    notifyListeners();
  }

  List<Plant> favoritePlants() {
    // Where == Percorre a lista e cria uma nova, com o parametro que colocar no parentesis
    return plants.where((plant) => plant.isFavorite).toList();
  }
}
