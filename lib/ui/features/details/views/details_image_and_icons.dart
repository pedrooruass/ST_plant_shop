import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/views/details_icon_card.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/widgets/favorite_plant_heart.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class DetailsImageAndIcons extends StatelessWidget {
  DetailsImageAndIcons({
    Key? key,
    required this.plant,
  }) : super(key: key);
  Plant plant;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.75,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                    ),
                  ),
                  const Spacer(),
                  const DetailsIconCard(icon: 'assets/icons/sun.svg'),
                  const DetailsIconCard(icon: 'assets/icons/icon_2.svg'),
                  const DetailsIconCard(icon: 'assets/icons/icon_3.svg'),
                  const DetailsIconCard(icon: 'assets/icons/icon_4.svg'),
                ],
              ),
            ),
          ),
          TopRowCustom(plant: plant),
        ],
      ),
    );
  }
}

class TopRowCustom extends StatelessWidget {
  TopRowCustom({
    Key? key,
    required this.plant,
  }) : super(key: key);
  Plant plant;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer2<PlantListProvider, FavoritePlantListProvider>(
      builder: (context, plantListProvider, favoritePlantListProvider, child) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: size.height * 0.7,
              width: size.width * 0.7,
              alignment: Alignment.topRight,
              padding: const EdgeInsets.only(
                top: defaultPadding,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: AppColors.primaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage(plant.imageAsset),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: defaultPadding,
                right: defaultPadding / 2,
              ),
              child: FavoritePlantHeart(
                isPlantFavorite:
                    favoritePlantListProvider.isPlantFavorite(plant.id),
                onClickFavorite: () {
                  favoritePlantListProvider.togglePlantFavorite(plant.id);
                },
                size: 35,
              ),
            ),
          ],
        );
      },
    );
  }
}
