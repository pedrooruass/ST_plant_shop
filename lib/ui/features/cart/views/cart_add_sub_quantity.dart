import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CartAddSubQuantity extends StatelessWidget {
  const CartAddSubQuantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.circleMinus,
              color: Colors.black54,
            ),
          ),
          const Text(
            '1',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.circlePlus,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
