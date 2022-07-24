import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/auth_provider.dart';
import 'package:training_app_clean/ui/features/auth/screens/sign_in_screen.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, authProvider, child) {
      return Scaffold(
        body: PageView(
          controller: pageViewController,
          children: <Widget>[
            SignInScreen(),
          ],
        ),
      );
    });
  }
}
