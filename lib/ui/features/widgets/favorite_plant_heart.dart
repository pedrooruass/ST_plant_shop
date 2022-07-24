import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class FavoritePlantHeart extends StatelessWidget {
  const FavoritePlantHeart({
    Key? key,
    required this.onClickFavorite,
    required this.isPlantFavorite,
    this.size,
  }) : super(key: key);

  final void Function() onClickFavorite;
  final bool isPlantFavorite;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClickFavorite,
      icon: Icon(
        favoriteIcon(isFavorite: isPlantFavorite),
        color: AppColors.primaryColor,
        size: size ?? 25,
      ),
    );
  }
}
