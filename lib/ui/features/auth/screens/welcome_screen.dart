import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/resources/constants.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key, required this.pageController})
      : super(key: key);

  final PageController pageController;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SizedBox(
                    height: 300,
                    child: Image.asset('assets/images/welcome_plant.png'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    'Please, login or register',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.pageController.jumpToPage(1);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primaryColor,
                    ),
                    child: const Text('Sign In'),
                  ),
                ),
                const Center(
                  child: Text('OR'),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widget.pageController.jumpToPage(2);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.unselectedCategoryColor,
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
