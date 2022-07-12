import 'package:flutter/material.dart';

class FavoritePlantListProvider extends ChangeNotifier {
  List<String> plantIds = [
    // '2',
  ];

  void saveToDatabase(){
    // Here we call the repository to save the data into firebase
  }

  // Toggle is alternate something
  void togglePlantFavorite(String plantId) {
    if (isPlantFavorite(plantId)) {
      plantIds.remove(plantId);
    } else {
      plantIds.add(plantId);
    }
    notifyListeners();
    saveToDatabase();
  }

  bool isPlantFavorite(String plantId) {
    return plantIds.contains(plantId);
  }
}
