import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/home/views/home_body.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
import 'package:training_app_clean/ui/features/widgets/custom_app_bar.dart';
import 'package:training_app_clean/ui/features/home/views/home_drawer.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(backgroundColor: primaryColor, haveCart: true, haveLeading: true),
      body:  const HomeBody(),
      drawer:  const HomeDrawer(drawerBackgroundColor: drawerColor1),
    );
  }
}
