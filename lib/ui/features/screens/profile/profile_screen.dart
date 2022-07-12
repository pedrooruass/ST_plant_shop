import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/screens/main/main_screen.dart';
import 'package:training_app_clean/ui/features/screens/profile/widgets/profile_body.dart';
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
        onLeadingPress: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainScreen(),
            ),
          );
        },
      ),
      body: const ProfileBody(),
    );
  }
}
