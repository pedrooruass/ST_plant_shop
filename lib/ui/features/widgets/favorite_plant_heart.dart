import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class FavoritePlantHeart extends StatelessWidget {
  const FavoritePlantHeart({
    Key? key,
    required this.onClickFavorite,
    required this.isPlantFavorite,
  }) : super(key: key);

  final void Function() onClickFavorite;
  final bool isPlantFavorite;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClickFavorite,
      icon: Icon(
        isPlantFavorite ? Icons.favorite : Icons.favorite_border,
        color: secondaryColor,
        size: 25,
      ),
    );
  }
}
