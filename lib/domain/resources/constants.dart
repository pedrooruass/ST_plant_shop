import 'package:flutter/material.dart';

const double defaultPadding = 20.0;

// colocar icones aqui

IconData favoriteIcon({bool isFavorite = false}) {
  return isFavorite ? Icons.favorite : Icons.favorite_border;
}

IconData cartIcon({bool isOnCart = false}) {
  return isOnCart ? Icons.shopping_cart : Icons.add_shopping_cart;
}

const IconData selectedFavoriteIcon = Icons.favorite;
const IconData notSelectedFavoriteIcon = Icons.favorite;
