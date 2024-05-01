import 'package:cookpad/recipe_detail_class.dart';
import 'package:flutter/material.dart';

class IngredientsTile extends StatelessWidget {
  final String bahan;
  const IngredientsTile({Key? key, required this.bahan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[350]!, width: 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bahan,
            style: TextStyle(color: Colors.black, fontSize: 14, height: 0.1),
          ),
        ],
      ),
    );
  }
}
