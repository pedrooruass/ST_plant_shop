import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/home/views/home_all_plants_body.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class HomeAllPlantsScreen extends StatelessWidget {
  const HomeAllPlantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.primaryColor),
        title: const Text('All Plants', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const HomeAllPlantsBody(),
    );
  }
}