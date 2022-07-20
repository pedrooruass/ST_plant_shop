import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/home/screens/custom_search_delegate.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

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
      },
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
    required this.storeTitle,
    required this.logoImageAsset,
  }) : super(key: key);

  final Size size;
  final String storeTitle;
  final String logoImageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: defaultPadding,
        right: defaultPadding,
        bottom: 36 + defaultPadding,
      ),
      height: size.height * 0.2 - 27,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(33),
          bottomRight: Radius.circular(33),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Hi $storeTitle!',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Image.asset(logoImageAsset, height: 50),
        ],
      ),
    );
  }
}

class HomeSearchBar extends StatelessWidget {
  HomeSearchBar({
    Key? key,
    required this.plantList,
  }) : super(key: key);

  List<Plant> plantList;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 50,
              color: primaryColor.withOpacity(0.23),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onTap: () => openSearchPage(context),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: primaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // suffixIcon: SvgPicture.asset('assets/icons/search.svg'), // Suffix is not working properly with SVG so we gonna use a 'Row'.
                ),
              ),
            ),
            SvgPicture.asset('assets/icons/search.svg'),
          ],
        ),
      ),
    );
  }
  openSearchPage(BuildContext context){
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(
                      plantList: plantList,
                    ),
                  );
  }
}
