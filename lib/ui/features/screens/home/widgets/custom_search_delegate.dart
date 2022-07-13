import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/pages/details/details_page.dart';
import 'package:training_app_clean/ui/features/widgets/constants.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate({
    required this.plantList,
  });
// Demo list to show querying
  List<Plant> plantList;



@override
TextStyle? get searchFieldStyle => const TextStyle(
  color: primaryColor,
);

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(
          Icons.clear,
          color: Colors.red,
        ),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(
        Icons.arrow_back,
        color: primaryColor,
      ),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<Plant> matchQuery = plantList
        .where(
          (plant) => plant.name.toLowerCase().startsWith(query.toLowerCase()),
        )
        .toList();
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        Plant plant = matchQuery[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(plant.imageAsset),
          ),
          title: Text(plant.name),
          subtitle: Text(plant.country),
          trailing: Text(
            plant.price.toString(),
          ),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<Plant> matchQuery = plantList
        .where(
          (plant) => plant.name.toLowerCase().startsWith(query.toLowerCase()),
        )
        .toList();
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        Plant plant = matchQuery[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(plant.imageAsset),
          ),
          title: Text(plant.name),
          subtitle: Text(plant.country),
          trailing: Text(
            '\$ ${plant.price}',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlantDetailsPage(plant: plant),
              ),
            );
          },
        );
      },
    );
  }
}
