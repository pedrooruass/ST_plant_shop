import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/app/models/liked.dart';
import 'package:training_app_clean/app/pages/the_home_page/components/recommended_card.dart';

class RecommendedPlants extends StatefulWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  State<RecommendedPlants> createState() => _RecommendedPlantsState();
}

class _RecommendedPlantsState extends State<RecommendedPlants> {
  @override
  Widget build(BuildContext context) {
    Liked liked = Provider.of<Liked>(context);
    return Consumer<Liked>(
      builder: (context, value, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommendedCard(
                image: 'assets/images/image_1.png',
                plantName: 'Samantha',
                country: 'Guatemala',
                price: 440,
                liked: liked,
              ),
              RecommendedCard(
                image: 'assets/images/image_2.png',
                plantName: 'Angelica',
                country: 'Peru',
                price: 450,
                liked: liked,
              ),
              RecommendedCard(
                image: 'assets/images/image_3.png',
                plantName: 'Maria',
                country: 'Brazil',
                price: 460,
                liked: liked,
              ),
            ],
          ),
        );
      },
    );
    // return ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) {
    //     return plants[index];
    //   },
    // );
  }
}
