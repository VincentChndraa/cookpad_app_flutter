import 'package:flutter/material.dart';

class StepTile extends StatelessWidget {
  final String tutorial;

  const StepTile({Key? key, required this.tutorial}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String number = tutorial.split('.')[0]; // Mengambil angka dari awal string
    String textWithoutNumber = tutorial
        .substring(tutorial.indexOf('.') + 1)
        .trim(); // Mengambil teks setelah angka

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.grey[350]!, width: 1))),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Bentuk bulat
              color: Colors.grey[800],
            ),
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              textWithoutNumber,
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}