import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_app_clean/ui/features/pages/details/widgets/details_icon_card.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class DetailsImageAndIcons extends StatelessWidget {
  const DetailsImageAndIcons({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.75,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 2),
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
          Container(
            height: size.height * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 60,
                  color: primaryColor.withOpacity(0.29),
                ),
              ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(image),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
