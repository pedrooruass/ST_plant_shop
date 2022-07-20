import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';

class ProfileTileSubScreens extends StatelessWidget {
  ProfileTileSubScreens({
    Key? key,
    required this.title,
    required this.icon,
    this.isSignOut = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  bool isSignOut;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: isSignOut ? Colors.red : primaryColor),
          trailing: isSignOut
              ? null
              : const Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Divider(
            thickness: 2,
            color: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
