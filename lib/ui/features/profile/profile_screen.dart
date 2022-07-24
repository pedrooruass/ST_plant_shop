import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/profile/views/profile_body.dart';
import 'package:training_app_clean/ui/features/widgets/custom_app_bar.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: CustomAppBar(backgroundColor: AppColors.primaryColor, title: 'Profile'),
      body: const ProfileBody(),
    );
  }
}
