import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class DetailsBuyNowBottomLine extends StatelessWidget {
  const DetailsBuyNowBottomLine({
    Key? key, required this.plant,
  }) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<CartPlantListProvider>(
      builder: (context, basketPlantListProvider, child) {
        return Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                onPressed: (){
                  basketPlantListProvider.addPlantOnCart(plant.id);
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryColor),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.black,
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
