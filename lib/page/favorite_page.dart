import 'package:cookpad/favourite_provider.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/category_card.dart';
import 'package:cookpad/widget/recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavouriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Tersimpan"),
      ),
      body: favoritesProvider.favoriteResep.isEmpty
          ? const Center(
              child: Text(
                'There are no favorites yet!',
                style: TextStyle(color: Colors.black),
              ),
            )
          : Container(
              // width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                // padding: const EdgeInsets.symmetric(horizontal: 25),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: favoritesProvider.favoriteResep.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 14 / 16,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return RecipeCard(
                    resep: favoritesProvider.favoriteResep[index],
                    // onRemovePressed: () {
                    //   favoritesProvider.removeFavorite(index);
                    // },
                  );
                },
              ),
            ),
    );
  }
}
