import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_list_info_tile.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_plant_list.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_proceed_to_check_out_container.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_promo_code_container.dart';

class CartBody extends StatelessWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const CartPlantList(),
          const CartPromoCodeContainer(),
          const CartListInfoTile(),
          CartProceedToCheckoutContainer(size: size),
        ],
      ),
    );
  }
}






