import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CartPlantIcon extends StatelessWidget {
  const CartPlantIcon({
    Key? key,
    required this.onClickCart,
    required this.isOnCart,
    this.size,
  }) : super(key: key);

  final void Function() onClickCart;
  final bool isOnCart;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClickCart,
      icon: Icon(
        cartIcon(isOnCart: isOnCart),
        color: AppColors.primaryColor,
        size: size ?? 25,
      ),
    );
  }
}
