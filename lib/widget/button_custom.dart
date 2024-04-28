import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const ButtonCustom({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 310,
        height: 40,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(241, 158, 75, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ),
      ),
    );
  }
}
