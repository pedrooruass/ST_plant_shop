import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/category.dart';
import 'package:training_app_clean/ui/features/screens/category/widget/category_app_bar_card.dart';
import 'package:training_app_clean/ui/features/screens/category/widget/page_route_app_bar.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
import 'package:training_app_clean/ui/features/widgets/universal_app_bar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);
    return Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: Colors.transparent,
        haveLeading: false,
        isTextString: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CategoryAppBarCard(
              category: Category(
                name: 'Herbs',
                id: '1',
              ),
              cardColor: primaryColor,
              onCategoryTap: () {
                pageController.jumpToPage(0);
              },
            ),
            CategoryAppBarCard(
              category: Category(
                name: 'Trees',
                id: '2',
              ),
              cardColor: secondaryColor,
              onCategoryTap: () {
                pageController.jumpToPage(1);
              },
            ),
            CategoryAppBarCard(
              category: Category(
                name: 'Creepers',
                id: '3',
              ),
              cardColor: Colors.brown,
              onCategoryTap: () {
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
