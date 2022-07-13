import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
class HomeTitleWithCustomUnderline extends StatelessWidget {
 
  final String text;
  const HomeTitleWithCustomUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: defaultPadding / 4),
              height: 7,
              color: primaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
