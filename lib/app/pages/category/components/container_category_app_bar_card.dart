import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';

class ContainerCategoryAppBarCard extends StatelessWidget {
  const ContainerCategoryAppBarCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Text(title),
    );
  }
}
