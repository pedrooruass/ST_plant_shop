import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/components/universal_app_bar.dart';
import 'package:training_app_clean/app/pages/profile/components/profile_body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
        title: 'Profile',
        haveIcons: false,
      ),
      body: const ProfileBody(),
    );
  }
}
