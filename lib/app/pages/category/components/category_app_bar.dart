import 'package:flutter/material.dart';
import 'package:training_app_clean/app/pages/category/components/container_category_app_bar_card.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          ContainerCategoryAppBarCard(title: 'Herbs'),
          ContainerCategoryAppBarCard(title: 'Trees'),
          ContainerCategoryAppBarCard(title: 'Creepers'),
        ],
      ),
    );
  }
}
