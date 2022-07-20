import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/ui/features/category/screens/categories_body.dart';

class PageRouteAppBar extends StatelessWidget {
  PageRouteAppBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CategoriesBody(
          category: Category(
            id: '1',
            name: 'Herbs',
          ),
        ),
        CategoriesBody(
          category: Category(
            id: '2',
            name: 'Trees',
          ),
        ),
        CategoriesBody(
          category: Category(
            id: '3',
            name: 'Creepers',
          ),
        ),
      ],
    );
  }
}
