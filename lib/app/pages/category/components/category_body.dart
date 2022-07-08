import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/category/components/category_card.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CategoryCard(
              title: 'Top Plants',
              imageAsset: 'assets/images/category_herbs_1.png',
            ),
            CategoryCard(
              title: 'New Arrival',
              imageAsset: 'assets/images/category_herbs_2.png',
            ),
            CategoryCard(
              title: 'Top Plants',
              imageAsset: 'assets/images/category_herbs_1.png',
            ),
            CategoryCard(
              title: 'Top Plants',
              imageAsset: 'assets/images/category_herbs_1.png',
            ),
          ],
        ),
      ),
    );
  }
}
