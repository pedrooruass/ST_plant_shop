import 'package:flutter/material.dart';

class CartPlantListProvider extends ChangeNotifier {
  List<String> plantIds = [
    '1',
  ];

  void togglePlantOnCart(String plantId) {
    if (isPlantOnCart(plantId)) {
      removePlantOnCart(plantId);
    }else{
      addPlantOnCart(plantId);
    }
    notifyListeners();
  }
  void addPlantOnCart(String plantId) {
    if (isPlantOnCart(plantId)) {
      // make it just to add 1 more to the quantity of that plant
    }else{
      plantIds.add(plantId);
    }
    notifyListeners();
  }

  void removePlantOnCart(String plantId) {
    plantIds.remove(plantId);
    notifyListeners();
  }
  void removeAll() {
    plantIds.clear();
    notifyListeners();
  }

  bool isPlantOnCart(String plantId) {
    return plantIds.contains(plantId);
  }


}
