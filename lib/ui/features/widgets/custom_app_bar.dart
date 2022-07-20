import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/domain/resources/constants.dart';


// criar as 4 appbars sozinhas, e dps olhar oq tem em comum u colocar em um arquivo pai fazendo a heranca pra cada uma delas

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.title,
    required this.backgroundColor,
    this.haveCart = false,
    this.isTextString = true,
    this.haveLeading = false,
  }) : super(key: key);

  final dynamic title;
  final Color backgroundColor;
  bool haveCart;
  bool haveLeading;
  bool isTextString;
  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: isTextString
          ? title != null
              ? Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              : title
          : title,
      leading: haveLeading
          ? IconButton(
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            )
          : null,
      actions: haveCart
          ? [
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding / 2),
                child: IconButton(
                  icon: Badge(
                    badgeContent: const Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.basketShopping,
                      size: 19,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ]
          : null,
    );
  }
}
