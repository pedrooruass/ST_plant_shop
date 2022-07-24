import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:training_app_clean/app_widget.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
}
