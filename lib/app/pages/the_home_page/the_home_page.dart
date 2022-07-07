import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/components/universal_app_bar.dart';
import 'package:training_app_clean/app/pages/components/universal_drawer.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/body.dart';

class TheHomePage extends StatelessWidget {
  const TheHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
        haveCart: true,
        haveDrawer: true,
        isHomePage: true,
      ),
      body: const Body(),
      drawer: const UniversalDrawer(
        drawerBackgroundColor: drawerColor1,
      ),
    );
  }
}
