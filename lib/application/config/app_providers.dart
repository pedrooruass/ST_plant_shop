import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/auth_provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/favorite_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/featured_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/application/providers/recommended_plant_list_provider.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<PlantListProvider>(
        create: (context) => PlantListProvider()),
    ChangeNotifierProvider<FavoritePlantListProvider>(
        create: (context) => FavoritePlantListProvider()),
    ChangeNotifierProvider<RecommendedPlantListProvider>(
        create: (context) => RecommendedPlantListProvider()),
    ChangeNotifierProvider<FeaturedPlantListProvider>(
        create: (context) => FeaturedPlantListProvider()),
    ChangeNotifierProvider<CartPlantListProvider>(
        create: (context) => CartPlantListProvider()),
    ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
  ];
}
