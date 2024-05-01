import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String title;
  ImageProvider image;
  CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width - 16 - 16) / 2) -
          8, // 16  = horizontal padding , /2 = because there is 2 box horizontal, -8 = distance between box, 8*2 = 16
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        // Image
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 164,
        height: 80,
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(left: 10, bottom: 10),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.30),
            borderRadius: BorderRadius.circular(5)),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
