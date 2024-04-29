import 'dart:ui';

import 'package:cookpad/recipe_class.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {
  final Recipe recipe;
  const RecipeItem({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 280,
        width: 220,
        child: Stack(
          children: [
            Container(
              height: 280,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(recipe.image),
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      recipe.category,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  recipe.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(color: Colors.white),
                                  maxLines: 2,
                                ),
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                Icons.bookmark_outline,
                                size: 20,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "${recipe.duration} | ${recipe}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                            maxLines: 2,
                          )
                        ],
                      )),
                ),
              ),
            )
          ],
        ));
  }
}
