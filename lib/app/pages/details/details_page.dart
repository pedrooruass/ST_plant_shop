import 'package:flutter/material.dart';
import 'package:training_app_clean/app/pages/details/components/details_body.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const DetailsBody(),
    );
  }
}