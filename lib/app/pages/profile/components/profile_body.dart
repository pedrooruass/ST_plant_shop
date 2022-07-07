import 'package:flutter/material.dart';
import 'package:training_app_clean/app/pages/profile/components/circular_profile_photo.dart';
import 'package:training_app_clean/app/pages/profile/components/white_background_with_list_tile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircularProfilePhoto(
          image: 'assets/images/plant_logo.png',
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: const [
              Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pedro Ruas',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        const WhiteBackgroundWithListTile(),
      ],
    );
  }
}
