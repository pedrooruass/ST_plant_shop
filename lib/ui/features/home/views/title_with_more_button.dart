import 'package:flutter/material.dart';
import 'package:training_app_clean/ui/features/home/views/title_with_custom_underline.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';
class HomeSubtitleWithMoreButton extends StatelessWidget {
  const HomeSubtitleWithMoreButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          HomeTitleWithCustomUnderline(text: title),
          const Spacer(),
          TextButton(
            onPressed: press,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
            ),
            child: const Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
