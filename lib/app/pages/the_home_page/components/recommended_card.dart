import 'package:flutter/material.dart';
import 'package:training_app_clean/app/core/constants.dart';
import 'package:training_app_clean/app/models/liked.dart';
import 'package:training_app_clean/app/pages/details/details_page.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({
    Key? key,
    required this.image,
    required this.plantName,
    required this.country,
    required this.price,
    required this.liked,
  }) : super(key: key);

  final String image, plantName, country;
  final int price;
  final Liked liked;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(image),
              IconButton(
                onPressed: () {
                  if (liked.likedList.contains(plantName)) {
                    liked.likedList.remove(plantName);
                  } else {
                    liked.likedList.add(plantName);
                  }
                },
                icon: Icon(
                  (liked.likedList.contains(plantName))
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: secondaryColor,
                  size: 25,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    title: plantName,
                    country: country,
                    image: image,
                    price: price,
                  ),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${plantName}\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: primaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$${price}',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: primaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
