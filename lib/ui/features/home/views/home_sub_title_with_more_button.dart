import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/home/screens/home_all_plants_screen.dart';
import 'package:training_app_clean/ui/features/home/views/home_more_plants.dart';
import 'package:training_app_clean/ui/features/home/views/home_subtitle.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class HomeSubtitleWithMoreButton extends StatelessWidget {
  const HomeSubtitleWithMoreButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          HomeTitleWithCustomUnderline(text: title),
          const Spacer(),
          HomeMorePlants(press: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeAllPlantsScreen(),
              ),
            );
          }),
        ],
      ),
    );
  }
}
