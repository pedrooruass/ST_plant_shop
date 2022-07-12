import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/ui/features/pages/categories/sub_pages/category_page.dart';
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
      children: [
        CategoryPage(
          category: Category(
            id: '1',
            name: 'Herbs',
          ),
        ),
        CategoryPage(
          category: Category(
            id: '2',
            name: 'Trees',
          ),
        ),
        CategoryPage(
          category: Category(
            id: '3',
            name: 'Creepers',
          ),
        ),
      ],
    );
  }
}
