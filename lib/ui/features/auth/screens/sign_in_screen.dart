import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/repositories/auth_repository.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key, required this.onClickedSignUp})
      : super(key: key);

  final VoidCallback onClickedSignUp;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: const Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: size.width,
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'email'),
              ),
            ),
            SizedBox(
              height: 50,
              width: size.width,
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'password'),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            ElevatedButton(
              onPressed: () {
                AuthRepository.signInWithEmailAndPassword(
                  context: context,
                  email: emailController.text,
                  password: passwordController.text,
                );
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.primaryColor,
              ),
              child: const Text('Sign In'),
            ),
            const SizedBox(height: defaultPadding / 2),
            RichText(
              text: TextSpan(
                text: 'No account?  ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickedSignUp,
                    style: const TextStyle(
                      color: AppColors.secondaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: emailController.text.trim(),
  //     password: passwordController.text.trim(),
  //   );
  // }
}
