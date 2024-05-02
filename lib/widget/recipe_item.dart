import 'dart:ui';

import 'package:cookpad/page/detail_page.dart';
import 'package:cookpad/recipe_class.dart';
import 'package:cookpad/recipe_detail_class.dart';
import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {
  final Resep resep;

  const RecipeItem({
    super.key,
    required this.resep,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailResep(resep: resep)));
      },
      child: Container(
          height: 210,
          width: ((MediaQuery.of(context).size.width - 25 - 25) / 2) - 8,
          child: Stack(
            children: [
              Container(
                height: 210,
                width: ((MediaQuery.of(context).size.width - 25 - 25) / 2) - 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(resep.image),
                      fit: BoxFit.cover,
                    )),
              ),
              // Positioned(
              //   top: 8,
              //   left: 8,
              //   child: ClipRRect(
              //     child: BackdropFilter(
              //       filter: ImageFilter.blur(
              //         sigmaX: 5,
              //         sigmaY: 5,
              //       ),
              //       child: Container(
              //         padding: const EdgeInsets.all(8),
              //         decoration: BoxDecoration(
              //           color: Colors.black.withOpacity(0.5),
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         child: Text(
              //           resep.category,
              //           style: Theme.of(context)
              //               .textTheme
              //               .bodyMedium
              //               ?.copyWith(color: Colors.white),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
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
                                    resep.judul,
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
                              "${resep.durasi} | ${resep}",
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
          )),
    );
  }
}
