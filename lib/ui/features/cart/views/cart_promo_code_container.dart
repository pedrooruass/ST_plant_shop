import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CartPromoCodeContainer extends StatelessWidget {
  const CartPromoCodeContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      margin: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultPadding / 2),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 190,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Promo Code',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: const TextStyle(color: AppColors.primaryColor),
              cursorColor: AppColors.primaryColor,
            ),
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            width: 90,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(defaultPadding / 2),
            ),
            child: const Text(
              'Apply',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
