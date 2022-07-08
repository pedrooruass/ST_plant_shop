import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
class CategoryCard extends StatelessWidget {
  const     CategoryCard({
    Key? key, required this.imageAsset, required this.title,
  }) : super(key: key);

  final String imageAsset, title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      margin: const EdgeInsets.only(bottom: defaultPadding),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset(
              imageAsset,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
