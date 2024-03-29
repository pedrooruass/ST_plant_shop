import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class DetailsIconCard extends StatelessWidget {
  const DetailsIconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(defaultPadding /2),
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      height: 62,
      width: 63,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,15),
            blurRadius: 22,
            color: AppColors.primaryColor.withOpacity(0.22),
          ),
          const BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 20,
            color: AppColors.white
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
