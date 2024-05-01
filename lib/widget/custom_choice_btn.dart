import 'package:flutter/material.dart';

class ChoiceBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final String? imagePath;
  ChoiceBtn({
    super.key,
    required this.onPressed,
    required this.label,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (imagePath != null)
                Positioned(
                  left: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(imagePath!),
                  ),
                ),
              SizedBox(width: 5), // Jarak antara gambar dan teks
              Text(label),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[350],
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
    );
  }
}
