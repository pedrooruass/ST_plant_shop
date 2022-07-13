import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';

class CategoryAppBarCard extends StatelessWidget {
  const CategoryAppBarCard({
    Key? key,
    required this.onCategoryTap,
    required this.category,
    required this.cardColor,
  }) : super(key: key);

  final Category category;
  final Color cardColor;
  final void Function() onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCategoryTap,
      child: Container(
        height: 40,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Text(category.name!),
      ),
    );
  }
}
