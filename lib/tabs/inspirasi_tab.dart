import 'package:cookpad/recipe_class.dart';
import 'package:cookpad/widget/recipe_item.dart';
import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({super.key});

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            // row ke-1
            Column(
              children: [
                Text("Apa isi kulkasmu?"),
                Text("Pilih hingga 3 bahan"),
              ],
            ),

            // row ke-2

            // row ke-3

            // row ke-4
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text("Resep Terbaru")),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 280,
              child: ListView.separated(
                itemCount: recipeData.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                separatorBuilder: (_, __) {
                  return const SizedBox(width: 16);
                },
                itemBuilder: ((context, index) {
                  final recipe = recipeData[index];
                  return RecipeItem(recipe: recipe);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
