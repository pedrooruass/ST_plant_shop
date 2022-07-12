import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class SearchTry extends StatelessWidget {
  const SearchTry({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<PlantListProvider>(
        builder: (context, plantListProvider, child) {
      List<Plant> plantList = [];
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 15, 102),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
                top: defaultPadding * 3,
              ),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (valueTyped) {
                        plantList = plantListProvider.searchPlants(
                          valueTyped.toLowerCase(),
                        );
                      },
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: primaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // suffixIcon: SvgPicture.asset('assets/icons/search.svg'), // Suffix is not working properly with SVG so we gonna use a 'Row'.
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/search.svg'),
                ],
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: plantList.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      plantList[index].imageAsset,
                    ),
                  ),
                  title: Text(
                    plantList[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    plantList[index].country,
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                    ),
                  ),
                  trailing: Text(
                    plantList[index].price.toString(),
                    style: const TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
