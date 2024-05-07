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
        title: Text(
          "Tersimpan",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: favoritesProvider.favoriteResep.isEmpty
          ? const Center(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum ada resep yang disimpan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  'Kamu belum menyimpan resep apa pun.',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                const SizedBox(height: 5),
                Text(
                  'Cari dan simpan resep untuk melihatnya disini',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ))
          : ListView(
              // width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              children: [
                GridView.builder(
                  // padding: const EdgeInsets.symmetric(horizontal: 25),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: favoritesProvider.favoriteResep.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 9 / 16,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RecipeCard(
                      resep: favoritesProvider.favoriteResep[index],
                    );
                  },
                ),
              ],
            ),
    );
  }
}
