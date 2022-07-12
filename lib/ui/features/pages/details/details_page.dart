import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/pages/details/widgets/details_buy_now_bottom_line.dart';
import 'package:training_app_clean/ui/features/pages/details/widgets/details_image_and_icons.dart';
import 'package:training_app_clean/ui/features/pages/details/widgets/details_title_and_price.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              DetailsImageAndIcons(
                image: plant.imageAsset,
              ),
              DetailsTitleAndPrice(
                name: plant.name,
                country: plant.country,
                price: plant.price,
              ),
              
              const DetailsBuyNowBottomLine(),
              // const SizedBox(height: defaultPadding * 2),
            ],
          ),
        ),
      ),
    );
  }
}