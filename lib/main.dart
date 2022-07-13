import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/main/main_screen.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Training App',
      theme: ThemeData(
        primaryColor: primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity, // ?
      ),
      home: const MainScreen(),
    );
  }
}
