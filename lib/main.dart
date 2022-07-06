import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/plants_list.dart';
import 'package:training_app_clean/app/pages/page_changer.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return PlantList();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Training App',
        theme: ThemeData(
          primaryColor: primaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
          visualDensity: VisualDensity.adaptivePlatformDensity, // ?
        ),
        home: const PageChanger(),
      ),
    );
  }
}
