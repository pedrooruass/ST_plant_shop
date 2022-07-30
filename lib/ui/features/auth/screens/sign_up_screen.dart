import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/repositories/auth_repository.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';
import 'package:email_validator/email_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key, required this.onClickedSignIn})
      : super(key: key);

  final VoidCallback onClickedSignIn;

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

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
        backgroundColor: AppColors.secondaryColor,
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: size.width,
                child: TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
              ),
              SizedBox(
                height: 50,
                width: size.width,
                child: TextFormField(
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (password) =>
                      password != null && password.length < 6
                          ? 'Enter a minimum of 6 characters password'
                          : null,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              ElevatedButton(
                onPressed: () {
                  AuthRepository.signUpWithEmailAndPassword(
                    formKey: formKey,
                    context: context,
                    email: emailController.text,
                    password: passwordController.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.secondaryColor,
                ),
                child: const Text('Sign Up'),
              ),
              const SizedBox(height: defaultPadding / 2),
              RichText(
                text: TextSpan(
                  text: 'Already has an account?  ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignIn,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
