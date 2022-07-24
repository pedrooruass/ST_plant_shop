import 'package:flutter/material.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/details/details_page.dart';
import 'package:training_app_clean/ui/theme/app_colors.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate({
    required this.plantList,
  });
// Demo list to show querying
  List<Plant> plantList;

  @override
  TextStyle? get searchFieldStyle => const TextStyle(
        color: AppColors.primaryColor,
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
        icon: const Icon(
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
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.primaryColor,
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
    return SearchListTile(matchQuery: matchQuery);
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
    return SearchListTile(matchQuery: matchQuery);
  }
}

class SearchListTile extends StatelessWidget {
  const SearchListTile({
    Key? key,
    required this.matchQuery,
  }) : super(key: key);

  final List<Plant> matchQuery;

  @override
  Widget build(BuildContext context) {
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
