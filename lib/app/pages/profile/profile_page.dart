import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/components/universal_app_bar.dart';
import 'package:training_app_clean/app/pages/components/universal_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Text('Lets see if it works'),
      ),
      drawer: UniversalDrawer(
        drawerBackgroundColor: drawerColor1,
      ),
    );
  }
}
