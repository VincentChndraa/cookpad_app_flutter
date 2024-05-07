import 'dart:ui';

import 'package:cookpad/favourite_provider.dart';
import 'package:cookpad/page/detail_page.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class RecipeCard extends StatefulWidget {
  final Resep resep;

  const RecipeCard({
    Key? key,
    required this.resep,
  }) : super(key: key);

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavouriteProvider>(context);
    bool isFavorite = favoritesProvider.favoriteResep.contains(widget.resep);
    return Material(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailResep(resep: widget.resep)));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Section 1 - Gambar
            Stack(
              children: [
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.resep.image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
                Positioned(
                  top: 2,
                  right: 2,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        int index = favoritesProvider.favoriteResep
                            .indexOf(widget.resep);
                        if (isFavorite) {
                          // Remove the recipe from favorites
                          favoritesProvider.removeFavorite(index);
                        } else {
                          // Add the recipe to favorites
                          favoritesProvider.addFavorite(widget.resep);
                        }
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      isFavorite ? Icons.bookmark : Icons.bookmark_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 7),

            // Section 2 - Informasi User
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 9,
                  ),
                  SizedBox(width: 5),
                  Text(
                    widget.resep.nama_user,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3),

            // Section 3 - Judul Resep
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                widget.resep.judul,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                widget.resep.durasi,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        "😋",
                        style: TextStyle(
                            fontFamily: 'Segoe UI Emoji', fontSize: 10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        "❤️",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(30)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      child: Text(
                        "👏",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
