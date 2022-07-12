import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/screens/home/widgets/home_body.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
import 'package:training_app_clean/ui/features/widgets/universal_app_bar.dart';
import 'package:training_app_clean/ui/features/widgets/universal_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
        haveCart: true,
        haveDrawer: true,
        isHomePage: true,
      ),
      body: const HomeBody(),
      drawer: const UniversalDrawer(
        drawerBackgroundColor: drawerColor1,
      ),
    );
  }
}
