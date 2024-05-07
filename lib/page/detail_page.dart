import 'package:cookpad/favourite_provider.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/button_custom.dart';
import 'package:cookpad/widget/ingredients_tile.dart';
import 'package:cookpad/widget/step_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailResep extends StatefulWidget {
  final Resep resep;
  const DetailResep({super.key, required this.resep});

  @override
  State<DetailResep> createState() => _DetailResepState();
}

class _DetailResepState extends State<DetailResep> {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavouriteProvider>(context);
    bool isFavorite = favoritesProvider.favoriteResep.contains(widget.resep);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(""),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.share_outlined),
                const SizedBox(width: 25),
                IconButton(
                  onPressed: () {
                    setState(() {
                      int index =
                          favoritesProvider.favoriteResep.indexOf(widget.resep);
                      if (isFavorite) {
                        // Hapus resep dari favorit
                        favoritesProvider.removeFavorite(index);
                      } else {
                        // Tambah resep ke favorit
                        favoritesProvider.addFavorite(widget.resep);
                      }
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: Icon(
                    isFavorite ? Icons.bookmark : Icons.bookmark_outline,
                  ),
                ),
                const SizedBox(width: 20),
                Icon(Icons.more_vert)
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Section 1 - Gambar Resep
          GestureDetector(
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.resep.image),
                      fit: BoxFit.cover)),
              // child: Container(
              //   height: 280,
              //   width: MediaQuery.of(context).size.width,
              // ),
            ),
          ),

          //  Section 2 - Info Resep
          Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 20, bottom: 30, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul resep dan tombol favorit
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.resep.judul,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            int index = favoritesProvider.favoriteResep
                                .indexOf(widget.resep);
                            if (isFavorite) {
                              // Hapus resep dari favorit
                              favoritesProvider.removeFavorite(index);
                            } else {
                              // Tambah resep ke favorit
                              favoritesProvider.addFavorite(widget.resep);
                            }
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite ? Icons.bookmark : Icons.bookmark_outline,
                        ),
                      ),
                    ],
                  ),

                  // Informasi user
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.resep.nama_user,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Text(widget.resep.user_name,
                                style: TextStyle(fontSize: 10)),
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, size: 20),
                                Text(widget.resep.kota_asal,
                                    style: TextStyle(fontSize: 10)),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  // Deskripsi Resep
                  Text(
                    widget.resep.deskripsi,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                ],
              )),

          // Section 3 - Bahan Makanan
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: widget.resep.bahan2.split("\n").length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "Bahan-Bahan:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              } else {
                String bahan = widget.resep.bahan2.split('\n')[index - 1];
                return IngredientsTile(bahan: bahan);
              }
            },
          ),

          // Section 4 - Langkah - Langkah Memasak
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: widget.resep.cara_memasak.split("\n").length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: Text(
                    "Langkah",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              } else {
                String tutorial =
                    widget.resep.cara_memasak.split('\n')[index - 1];

                return StepTile(tutorial: tutorial);
              }
            },
          ),

          // Section 5 - User Information
          Container(
            height: 250,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(),
                Text(
                  "Diterbitkan oleh",
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  widget.resep.nama_user,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: ButtonCustom(
                    onPressed: () {},
                    label: "Ikuti",
                    backgroundColor: Colors.grey.shade800,
                    foregroundColor: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
