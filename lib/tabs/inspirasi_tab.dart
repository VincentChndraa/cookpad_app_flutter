import 'package:flutter/material.dart';
import 'package:cookpad/page/detail_page.dart';
import 'package:cookpad/recipe_class.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/button2custom.dart';
import 'package:cookpad/widget/custom_choice_btn.dart';
import 'package:cookpad/widget/recipe_item.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // row ke 1
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apa isi kulkasmu?",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Text("Pilih hingga 3 bahan"),
                  ],
                ),
              ),

              // Bahan Makanan
              Container(
                height: 35,
                margin: const EdgeInsets.only(top: 8),
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  itemCount: ingredientsItems.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 8);
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.topCenter,
                      child: TextButton(
                        onPressed: () {
                          // Do something with ingredientsItems[index]
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.green, width: 1),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  ingredientsItems[index]['image'] ?? '',
                                ),
                                radius: 15,
                              ),
                            ),
                            SizedBox(width: 3),
                            Text(
                              ingredientsItems[index]['name'] ?? '',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              // row ke 3

              // row ke 4
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Resep Terbaru",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                // height: 210,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: dataRecipe.map((recipe) {
                    return RecipeItem(resep: recipe);
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
