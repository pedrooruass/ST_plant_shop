import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class CartListInfoTile extends StatelessWidget {
  const CartListInfoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<PlantListProvider, CartPlantListProvider>(
        builder: (context, plantListProvider, cartPlantListProvider, child) {
      return Column(
        children: [
          InfoPriceTile(
            title: 'Subtotal',
            currencyType: 'USD',
            price: plantListProvider.totalPrice(
              plants: createNewCartList(
                cartPlantList: cartPlantListProvider.plantIds,
                plantList: plantListProvider.plants,
              ),
            ),
          ),
          const InfoPriceTile(
            title: 'Shipping',
            currencyType: 'USD',
            price: 4.99,
          ),
          InfoPriceTile(
            title: 'Bag Total',
            currencyType: 'usd',
            price: plantListProvider.totalPrice(
              plants: createNewCartList(
                cartPlantList: cartPlantListProvider.plantIds,
                plantList: plantListProvider.plants,
              ),
            ) + 4.99, // change to the actual shipping price
          ),
        ],
      );
    });
  }

  List<Plant> createNewCartList({
    required List<String> cartPlantList,
    required Map<String, Plant> plantList,
  }) {
    List<Plant> cartList = [];
    for (int i = 0; i < cartPlantList.length; i++) {
      String plantId = cartPlantList[i];
      Plant plant = plantList[plantId]!;
      cartList.add(plant);
    }
    return cartList;
  }
}

class InfoPriceTile extends StatelessWidget {
  const InfoPriceTile({
    Key? key,
    required this.title,
    required this.price,
    required this.currencyType,
  }) : super(key: key);
  final String title, currencyType;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              const SizedBox(width: defaultPadding / 4),
              Text(
                currencyType.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
