import 'package:flutter/material.dart';
import 'package:training_app_clean/app/pages/category/components/category_app_bar.dart';
import 'package:training_app_clean/app/pages/category/components/category_body.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CategoryAppBar(),
      body: CategoryBody(),
    );
  }
}
