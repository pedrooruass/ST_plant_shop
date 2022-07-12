import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/screens/profile/widgets/profile_circular_photo.dart';
import 'package:training_app_clean/ui/features/screens/profile/widgets/profile_white_background.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileCircularPhoto(
          image: 'assets/images/plant_logo.png',
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
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
        const ProfileWhiteBackground(),
      ],
    );
  }
}
