import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/domain/entities/plant.dart';

class PlantListProvider extends ChangeNotifier {
  final Map<String, Plant> plants = {
    '1': Plant(
      id: '1',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/image_1.png',
      name: 'Plant 1',
      price: 350,
      country: 'Brasil',
    ),
    '2': Plant(
      id: '2',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/bottom_img_1.png',
      name: 'Plant 2',
      price: 250,
      country: 'Canada',
    ),
    '3': Plant(
      id: '3',
      categoryId: Category(id: '2'),
      imageAsset: 'assets/images/image_2.png',
      name: 'Plant 3',
      price: 150,
      country: 'Guatemala',
    ),
    '4': Plant(
      id: '4',
      categoryId: Category(id: '2'),
      imageAsset: 'assets/images/bottom_img_1.png',
      name: 'Plant 4',
      price: 450,
      country: 'Japan',
    ),
    '5': Plant(
      id: '5',
      categoryId: Category(id: '3'),
      imageAsset: 'assets/images/image_3.png',
      name: 'Plant 5',
      price: 650,
      country: 'Chile',
    ),
    '6': Plant(
      id: '6',
      categoryId: Category(id: '3'),
      imageAsset: 'assets/images/bottom_img_1.png',
      name: 'Plant 6',
      price: 50,
      country: 'Korea',
    ),
    '7': Plant(
      id: '7',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/bottom_img_2.png',
      name: 'Plant 7',
      price: 750,
      country: 'Paraguay',
    ),
  };

  List<Plant> categoryPlant(Category categoryId) {
    return plants.values
        .where((plant) => plant.categoryId.id == categoryId.id)
        .toList();
  }

  List<Plant> searchPlants(String plantName) {
    return plants.values
        .where(
          (plant) => plant.name.toLowerCase().startsWith(plantName),
        )
        .toList();
  }

  double totalPrice({required List<Plant> plants}) {
    double total = 0;

    for(int i = 0; i < plants.length; i++) {
      total += plants[i].price;
    }
    return total;
  }
}
