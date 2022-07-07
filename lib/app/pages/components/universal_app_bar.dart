import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/app/core/constants.dart';

class UniversalAppBar extends StatelessWidget implements PreferredSizeWidget {
  UniversalAppBar({
    Key? key,
    this.title,
    required this.backgroundColor,
    this.haveIcons = true,
  }) : super(key: key);

  final dynamic title;
  final Color backgroundColor;
  bool haveIcons;
  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: title != null
          ? Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )
          : null,
      leading: haveIcons
          ? Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: SvgPicture.asset('assets/icons/menu.svg'),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            )
          : null,
      actions: haveIcons
          ? [
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding / 2),
                child: IconButton(
                  icon: const Icon(
                    FontAwesomeIcons.basketShopping,
                    size: 19,
                  ),
                  onPressed: () {},
                ),
              ),
            ]
          : null,
    );
  }
}
