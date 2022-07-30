import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_app_bar.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_body.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.cartBackgroundScreenColor,
      appBar: CartAppBar(),
      body: CartBody(),
    );
  }
}

