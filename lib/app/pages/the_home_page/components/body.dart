import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/featured_plants.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/recomends_plants.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/title_with_more_button.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: 'Recommended', press: () {}),
          RecomendsPlants(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {}),
          const FeaturedPlants(),
          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}

