import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/auth/screens/sign_in_screen.dart';
import 'package:training_app_clean/ui/features/auth/screens/sign_up_screen.dart';
import 'package:training_app_clean/ui/features/auth/screens/welcome_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: pageController,
      children: [
        WelcomeScreen(
          pageController: pageController,
        ),
        const SignInScreen(),
        const SignUpScreen(),
      ],
    ));
  }
}
