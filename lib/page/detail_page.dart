import 'package:cookpad/recipe_detail_class.dart';
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

          //  Section 2 - Judul
          Container(
            margin: EdgeInsets.only(bottom: 12, top: 16),
            child: Text(
              resep.judul,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // Section 3 - Deskripsi
        ],
      ),
    );
  }
}
