import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/domain/entities/plant.dart';

class PlantListProvider extends ChangeNotifier {
  final Map<String, Plant> plants = {
    '1': Plant(
      id: '1',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/image_1.png',
      name: 'Pedro',
      price: 350,
      country: 'Brasil',
    ),

    '2': Plant(
      id: '2',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/image_2.png',
      name: 'Maria',
      price: 250,
      country: 'Canada',
    ),
    '3': Plant(
      id: '3',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/image_3.png',
      name: 'Luan',
      price: 150,
      country: 'Guatemala',
    ),
    '4': Plant(
      id: '4',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/image_3.png',
      name: 'Jeovaldo',
      price: 450,
      country: 'Japao',
    ),
    '5': Plant(
      id: '5',
      categoryId: Category(id: '1'),
      imageAsset: 'assets/images/image_3.png',
      name: 'Karla',
      price: 650,
      country: 'Chile',
    ),
    // Plant(
    //   id: '',
    //   imageAsset: 'assets/images/image_3.png',
    //   name: 'Seungmooo',
    //   price: 50,
    //   country: 'Korea',
    // ),
    // Plant(
    //   id: '',
    //   imageAsset: 'assets/images/image_3.png',
    //   name: 'Giulia',
    //   price: 750,
    //   country: 'Paraguai',
    // ),
  };

  List<Plant> categoryPlant(Category categoryId) {
    List<Plant> categoryPlantsLocated = [];
    switch (categoryId.id) {
      case '1':
        categoryPlantsLocated =
            plants.values.where((plant) => plant.categoryId.id == '1').toList();
        break;
      case '2':
        categoryPlantsLocated =
            plants.values.where((plant) => plant.categoryId.id == '2').toList();
        break;
      case '3':
        categoryPlantsLocated =
            plants.values.where((plant) => plant.categoryId.id == '3').toList();
        break;
    }
    return categoryPlantsLocated;
  }

  List<Plant> searchPlants(String plantName) {
    return plants.values
        .where((plant) => plant.name.startsWith(plantName))
        .toList();
  }
}
