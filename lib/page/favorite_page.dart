import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/category_card.dart';
import 'package:cookpad/widget/recipe_item.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Resep> favoriteResep;

  FavoriteScreen(this.favoriteResep);

  @override
  Widget build(BuildContext context) {
    if (favoriteResep.isEmpty) {
      return Center(
        child: Text("Belum ada resep yang disimpan"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return RecipeItem(resep: favoriteResep[index]);
        },
        itemCount: favoriteResep.length, // Tambahkan itemCount
      );
    }
  }
}
