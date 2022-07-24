import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class CartListInfoTile extends StatelessWidget {
  const CartListInfoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         InfoPriceTile(
          title: 'Subtotal',
          currencyType: 'USD',
          price: 45,
        ),
         InfoPriceTile(
          title: 'Shipping',
          currencyType: 'USD',
          price: 4.99,
        ),
         InfoPriceTile(
          title: 'Bag Total',
          currencyType: 'usd',
          price: 50.98,
        ),
      ],
    );
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
