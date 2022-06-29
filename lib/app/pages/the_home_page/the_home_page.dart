import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/components/universal_app_bar.dart';
import 'package:training_app_clean/app/pages/components/universal_drawer.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/body.dart';

class TheHomePage extends StatefulWidget {
  const TheHomePage({Key? key}) : super(key: key);

  @override
  State<TheHomePage> createState() => _TheHomePageState();
}

class _TheHomePageState extends State<TheHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UniversalAppBar(
        backgroundColor: primaryColor,
      ),
      body: Body(),
      drawer: UniversalDrawer(
        drawerBackgroundColor: drawerColor1 ,
      ),
    );
  }
}
