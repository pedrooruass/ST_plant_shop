import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/ui/features/home/views/home_header.dart';
import 'package:training_app_clean/ui/features/home/views/home_search_bar.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class HomeHeaderWithSearchBox extends StatelessWidget {
  const HomeHeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Consumer<PlantListProvider>(
        builder: (context, plantListProvider, child) {
      return Container(
        margin: const EdgeInsets.only(
          bottom: defaultPadding * 2.5,
        ),
        height: size.height * 0.2,
        child: Stack(
          children: [
            HomeHeader(
              size: size,
              storeTitle: 'PlantShop',
              logoImageAsset: 'assets/images/plant_logo.png',
            ),
            HomeSearchBar(
              plantList: plantListProvider.plants.values.toList(),
            ),
          ],
        ),
      );
    });
  }
}

