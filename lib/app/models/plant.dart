class Plant {
  final String imageAsset;
  final String name;
  final double price;
  final String country;
  bool isFavorite;
  Plant({
    required this.imageAsset,
    required this.name,
    required this.price,
    required this.country,
    this.isFavorite = false,
  });
}
