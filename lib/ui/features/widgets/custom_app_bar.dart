import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/cart/screens/cart_screen.dart';

// criar as 4 appbars sozinhas, e dps olhar oq tem em comum u colocar em um arquivo pai fazendo a heranca pra cada uma delas

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.title,
    required this.backgroundColor,
    this.haveCart = false,
    this.isTextString = true,
  }) : super(key: key);

  final dynamic title;
  final Color backgroundColor;
  bool haveCart;
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
      actions: haveCart
          ? [
              const Padding(
                padding: EdgeInsets.only(right: defaultPadding / 2),
                child: CartWithBadge(),
              ),
            ]
          : null,
    );
  }
}

class CartWithBadge extends StatelessWidget {
  const CartWithBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartPlantListProvider>(
        builder: (context, cartPlantListProvider, child) {
      return IconButton(
        icon: Badge(
          badgeContent: Text(
            cartPlantListProvider.plantIds.length.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          child: const Icon(
            Icons.shopping_cart,
            size: 30,
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        },
      );
    });
  }
}
