import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/basket_plant_list_provider.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartAppBar({
    Key? key,
  }) : super(key: key);


  @override
  Size get preferredSize => const Size.fromHeight(55.0);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartPlantListProvider>(
      builder: (context, cartPlantListProvider, child) {
        return AppBar(
          iconTheme: const IconThemeData(color: AppColors.primaryColor),
          title: const Text(
            'Cart',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding:
                  const EdgeInsets.only(right: defaultPadding, top: defaultPadding),
              child: InkWell(
                onTap: (){
                  cartPlantListProvider.removeAll();
                },
                child: const Text(
                  'remove all',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        );
      }
    );
  }
}
