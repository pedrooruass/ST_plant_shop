import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/config/app_providers.dart';
import 'package:training_app_clean/ui/features/main/main_screen.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Training App',
        theme: AppColors.theme,
        home:  const MainScreen(),
      ),
    );
  }
}