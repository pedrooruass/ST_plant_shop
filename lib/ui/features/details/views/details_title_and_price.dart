import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class DetailsTitleAndPrice extends StatelessWidget {
  const DetailsTitleAndPrice({
    Key? key,
    required this.name,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String name, country;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$name\n',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: textColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: primaryColor,
                ),
          )
        ],
      ),
    );
  }
}
