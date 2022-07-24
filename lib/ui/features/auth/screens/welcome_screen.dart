import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/auth/screens/sign_in_screen.dart';
import 'package:training_app_clean/ui/features/auth/screens/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key})
      : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isLogIn = true;

  @override
  Widget build(BuildContext context) => isLogIn
      ? SignInScreen(
          onClickedSignUp: toggle,
        )
      : SignUpScreen(
          onClickedSignIn: toggle,
        );

  void toggle() {
    setState(() {
      isLogIn = !isLogIn;
    });
  }
}
