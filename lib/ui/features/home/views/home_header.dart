import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

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
