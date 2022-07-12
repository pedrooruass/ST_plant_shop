import 'package:training_app_clean/domain/entities/category.dart';

class Plant {
  final String id;
  final Category categoryId;
  final String imageAsset;
  final String name;
  final double price;
  final String country;
  Plant({
    required this.id,
    required this.categoryId,
    required this.imageAsset,
    required this.name,
    required this.price,
    required this.country,
  });
}
