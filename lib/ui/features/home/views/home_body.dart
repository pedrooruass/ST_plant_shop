import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/home/views/header_with_search_box.dart';
import 'package:training_app_clean/ui/features/home/views/home_featured_plants.dart';
import 'package:training_app_clean/ui/features/home/views/home_recommended_plants.dart';
import 'package:training_app_clean/ui/features/home/views/home_sub_title_with_more_button.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeaderWithSearchBox(size: size),
          HomeSubtitleWithMoreButton(title: 'Recommended', press: () {}),
          const SizedBox(height: 300, child: HomeRecommendedPlants()),
          HomeSubtitleWithMoreButton(title: 'Featured Plants', press: () {}),
          const SizedBox(height: 300, child: HomeFeaturedPlants()),
        ],
      ),
    );
  }
}
