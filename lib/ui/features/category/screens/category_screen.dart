import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/ui/features/category/views/category_app_bar_card.dart';
import 'package:training_app_clean/ui/features/category/views/page_route_app_bar.dart';
import 'package:training_app_clean/ui/features/widgets/custom_app_bar.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.primaryColor,
        isTextString: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryAppBarCard(
              category: Category(
                name: 'Herbs',
                id: '1',
              ),
              cardColor: currentIndex == 0
                  ? AppColors.primaryColor
                  : AppColors.secondaryColor,
              onCategoryTap: () {
                setState(() {
                  currentIndex = 0;
                });
                pageController.jumpToPage(0);
              },
            ),
            CategoryAppBarCard(
              category: Category(
                name: 'Trees',
                id: '2',
              ),
              cardColor: currentIndex == 1 ? AppColors.primaryColor : AppColors.secondaryColor,
              onCategoryTap: () {
                setState(() {
                  currentIndex = 1;
                });
                pageController.jumpToPage(1);
              },
            ),
            CategoryAppBarCard(
              category: Category(
                name: 'Creepers',
                id: '3',
              ),
              cardColor: currentIndex == 2 ? AppColors.primaryColor :AppColors.secondaryColor,
              onCategoryTap: () {
                setState(() {
                  currentIndex = 2;
                });
                pageController.jumpToPage(2);
              },
            ),
          ],
        ),
      ),
      body: PageRouteAppBar(
        pageController: pageController,
      ),
    );
  }
}
