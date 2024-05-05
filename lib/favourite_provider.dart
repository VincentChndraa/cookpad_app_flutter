import 'package:cookpad/recipe_detail_class.dart';
import 'package:flutter/material.dart';

class FavouriteProvider with ChangeNotifier {
  List<Resep> _favoriteResep = [];

  List<Resep> get favoriteResep => _favoriteResep;

  void addFavorite(Resep item) {
    _favoriteResep.add(item);
    notifyListeners();
  }

  void removeFavorite(int index) {
    if (index >= 0 && index < _favoriteResep.length) {
      _favoriteResep.removeAt(index);
      notifyListeners();
    }
  }
}
