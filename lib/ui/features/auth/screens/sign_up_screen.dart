import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/repositories/auth_repository.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
        backgroundColor: AppColors.unselectedCategoryColor,
        title: const Text('Sign Up'),
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
                decoration: const InputDecoration(labelText: 'Email'),
              ),
            ),
            SizedBox(
              height: 50,
              width: size.width,
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
            ),
            SizedBox(
              height: 50,
              width: size.width,
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Confirm Password'),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            ElevatedButton(
              onPressed: () {
                AuthRepository.signUpWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text,
                );
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.unselectedCategoryColor,
              ),
              child: const Text('Sign Up'),
            )
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
