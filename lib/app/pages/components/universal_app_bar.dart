import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/page_changer.dart';

class UniversalAppBar extends StatelessWidget implements PreferredSizeWidget {
  UniversalAppBar({
    Key? key,
    this.title,
    required this.backgroundColor,
    this.haveDrawer = false,
    this.haveCart = false,
    this.haveLeading = true,
    this.isHomePage = false,
  }) : super(key: key);

  final dynamic title;
  final Color backgroundColor;
  bool haveDrawer;
  bool haveCart;
  bool haveLeading;
  bool isHomePage;
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
      leading: haveLeading
          ? Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: isHomePage
                      ? SvgPicture.asset('assets/icons/menu.svg')
                      : const Icon(Icons.arrow_back_ios),
                  onPressed: haveDrawer
                      ? () => Scaffold.of(context).openDrawer()
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PageChanger(),
                            ),
                          );
                        },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            )
          : null,
      actions: haveCart
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
