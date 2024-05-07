import 'package:cookpad/favourite_provider.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:cookpad/widget/recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:cookpad/page/detail_page.dart';
import 'package:cookpad/widget/button2custom.dart';
import 'package:cookpad/widget/custom_choice_btn.dart';

import 'package:provider/provider.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavouriteProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFFF8F6F2),
      body: ListView(
        children: [
          // Section 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25, bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apa isi kulkasmu?",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                    ),
                    Text("Pilih hingga 3 bahan"),
                  ],
                ),
              ),

              // Section 2
              Container(
                height: 35,
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
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
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
              const SizedBox(height: 15),

              // Section 3
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Resep Terbaru",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
                ),
              ),
              const SizedBox(height: 5),

              // Section 4 - Recipe Card
              Container(
                // width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: dataRecipe.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 10 / 16,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RecipeCard(
                      resep: dataRecipe[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
