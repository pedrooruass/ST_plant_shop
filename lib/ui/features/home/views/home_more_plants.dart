import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class HomeMorePlants extends StatelessWidget {
  const HomeMorePlants({
    Key? key,
    required this.press,
  }) : super(key: key);

  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
      ),
      child: const Text(
        'More',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
