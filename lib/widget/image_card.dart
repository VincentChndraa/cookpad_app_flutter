import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Column(
        children: [
          Image.asset('/assets/images/buncis.jpg'),
          Text("Sayur Bening"),
        ],
      ),
    );
  }
}
