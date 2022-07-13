import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/profile/views/profile_body.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
import 'package:training_app_clean/ui/features/widgets/universal_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
        title: 'Profile',
      ),
      body: const ProfileBody(),
    );
  }
}
