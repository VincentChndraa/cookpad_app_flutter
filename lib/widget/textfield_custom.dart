import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldCustom extends StatelessWidget {
  TextEditingController ctrl;
  bool isObscureText;
  String hint;
  IconData icon;

  TextFieldCustom({
    super.key,
    required this.ctrl,
    required this.hint,
    this.isObscureText = false,
    this.icon = Icons.email,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: ctrl,
        obscureText: isObscureText,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
