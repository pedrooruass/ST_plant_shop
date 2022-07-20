import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/profile/views/profile_circular_photo.dart';
import 'package:training_app_clean/ui/features/profile/views/profile_user_name.dart';
import 'package:training_app_clean/ui/features/profile/views/profile_white_background.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfileCircularPhoto(image: 'assets/images/plant_logo.png'),
        ProfileUserName(profileName: 'Pedro Ruas'),
        Spacer(),
        ProfileWhiteBackground(),
      ],
    );
  }
}
