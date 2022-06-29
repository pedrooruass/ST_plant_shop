import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/pages/details/components/image_and_icons.dart';
import 'package:training_app_clean/app/pages/details/components/title_and_price.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndIcons(size: size),
            const TitleAndPrice(
              title: 'Angelica',
              country: 'Guatemala',
              price: 440,
            ),
            const SizedBox(height: defaultPadding),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                    ),
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Description',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: defaultPadding * 2),
          ],
        ),
      ),
    );
  }
}
