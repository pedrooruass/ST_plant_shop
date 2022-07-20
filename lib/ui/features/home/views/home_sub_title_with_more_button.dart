import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/home/views/home_more_plants.dart';
import 'package:training_app_clean/ui/features/home/views/home_subtitle.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class HomeSubtitleWithMoreButton extends StatelessWidget {
  const HomeSubtitleWithMoreButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          HomeTitleWithCustomUnderline(text: title),
          const Spacer(),
          HomeMorePlants(press: press),
        ],
      ),
    );
  }
}
