import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_app_clean/application/providers/cart_plant_list_provider.dart';
import 'package:training_app_clean/application/providers/plant_list_provider.dart';
import 'package:training_app_clean/domain/entities/plant.dart';
import 'package:training_app_clean/ui/features/cart/views/cart_plant_tile.dart';

class CartPlantList extends StatelessWidget {
  const CartPlantList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<PlantListProvider, CartPlantListProvider>(
      builder: (BuildContext context, PlantListProvider plantListProvider,
          CartPlantListProvider cartPlantListProvider, Widget? child) {
        return Expanded(
          child: ListView.builder(
            itemCount: cartPlantListProvider.plantIds.length,
            itemBuilder: (context, index) {
              String plantId = cartPlantListProvider.plantIds[index];
              Plant plant = plantListProvider.plants[plantId]!;
              return CartPlantTile(
                plantName: plant.name,
                imageAsset: plant.imageAsset,
                country: plant.country,
                price: plant.price,
                removeCartPlantOnPressed: (){
                  cartPlantListProvider.removePlantOnCart(plantId);
                }
              );
            },
          ),
        );
      },
    );
  }
}

