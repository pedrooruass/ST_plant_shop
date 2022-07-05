import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';

class CircularProfilePhoto extends StatelessWidget {
  const CircularProfilePhoto({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
            radius: 55,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: primaryColor,
                  spreadRadius: 4,
                )
              ],
            ),
            child: const Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
