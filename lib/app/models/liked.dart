import 'package:flutter/material.dart';

class Liked extends ChangeNotifier {
  final List<String> _likedList = [];

  List<String> get likedList=> _likedList;

  add(String plantName) {
    _likedList.add(plantName);
    notifyListeners();
  }

  remove(String plantName) {
    _likedList.remove(plantName);
    notifyListeners();
  }
}
