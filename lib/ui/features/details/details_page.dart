import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/views/details_buy_now_bottom_line.dart';
import 'package:training_app_clean/ui/features/details/views/details_image_and_icons.dart';
import 'package:training_app_clean/ui/features/details/views/details_title_and_price.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({
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
            DetailsImageAndIcons(
              plant: plant,
            ),
            DetailsTitleAndPrice(
              name: plant.name,
              country: plant.country,
              price: plant.price,
            ),
            const Spacer(),
             DetailsBuyNowBottomLine(
              plant: plant,
            ),
            // const SizedBox(height: defaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
