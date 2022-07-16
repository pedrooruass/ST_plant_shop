import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/home/screens/custom_search_delegate.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

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
                onTap: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(
                      plantList: plantList,
                    ),
                  );
                },
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
}
