import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/components/universal_app_bar.dart';
import 'package:training_app_clean/app/pages/components/universal_drawer.dart';
import 'package:training_app_clean/app/pages/liked/components/liked_body.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: secondaryColor,
      ),
      body: LikedBody(),
      drawer: UniversalDrawer(
        drawerBackgroundColor: drawerColor2,
      ),
    );
  }
}
