import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/ingredients_tile.dart';
import 'package:flutter/material.dart';

class DetailResep extends StatelessWidget {
  final Resep resep;
  const DetailResep({super.key, required this.resep});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tutorial"),
      ),
      body: ListView(
        children: [
          // Section 1 - Gambar
          GestureDetector(
            child: Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(resep.image), fit: BoxFit.cover)),
              child: Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),

          //  Section 2 - Info Resep
          Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.only(top: 20, bottom: 30, left: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Judul
                  Text(
                    resep.judul,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  // Deskripsi Resep
                  Text(
                    resep.deskripsi,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                ],
              )),

          // Section 3 - Bahan Makanan
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: resep.bahan2.split("\n").length,
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
                String bahan = resep.bahan2.split('\n')[index - 1];
                return IngredientsTile(bahan: bahan);
              }
            },
          ),

          // Section 4 - Deskripsi
          Text(
            "Langkah",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            resep.cara_memasak,
            style:
                TextStyle(color: Colors.black, fontSize: 14, height: 150 / 100),
          )
        ],
      ),
    );
  }
}
