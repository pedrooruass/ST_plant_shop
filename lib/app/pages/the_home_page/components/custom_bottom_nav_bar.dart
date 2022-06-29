import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/liked/liked_page.dart';
import 'package:training_app_clean/app/pages/the_home_page/the_home_page.dart';

class CtmBottomNavBar extends StatelessWidget {
  const CtmBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: defaultPadding * 2,
        right: defaultPadding * 2,
        bottom: defaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: primaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TheHomePage(),
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/flower.svg'),
          ),
          IconButton(
            onPressed: () {
              const AnimatedCrossFade(
                firstChild: TheHomePage(),
                secondChild: LikedPage(),
                crossFadeState: CrossFadeState.showFirst,
                duration: Duration(milliseconds: 500),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LikedPage(),
                ),
              );
            },
            icon: SvgPicture.asset('assets/icons/heart-icon.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/user-icon.svg'),
          ),
        ],
      ),
    );
  }
}
