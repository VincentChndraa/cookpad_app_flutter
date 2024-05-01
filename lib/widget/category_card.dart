import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String title;
  ImageProvider image;
  CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ((MediaQuery.of(context).size.width - 16 - 16) / 2) - 8,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // Image
        image: DecorationImage(image: image, fit: BoxFit.cover),
      ),
      child: Container(
        width: 164,
        height: 60,
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(color: Color(0xFF062D2B).withOpacity(0.40)),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
