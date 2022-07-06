import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/plant.dart';
import 'package:training_app_clean/app/pages/details/components/buy_now_bottom_line.dart';
import 'package:training_app_clean/app/pages/details/components/image_and_icons.dart';
import 'package:training_app_clean/app/pages/details/components/title_and_price.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.plant,
  }) : super(key: key);
  final Plant plant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ImageAndIcons(
              image: plant.imageAsset,
            ),
            TitleAndPrice(
              name: plant.name,
              country: plant.country,
              price: plant.price,
            ),
            const Spacer(),
            const BuyNowBottomLine(),
            // const SizedBox(height: defaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
