import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTextfield extends StatelessWidget {
  String label;
  IconData icon;
  Function(String text) onChanged;
  bool obscureText = false;

  DefaultTextfield({
    required this.label,
    required this.icon,
    required this.onChanged,
    this.obscureText  = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      onChanged: (text) {
        onChanged(text);
      },
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
              color: Colors.white
          ),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.white,
        ),
        enabledBorder:UnderlineInputBorder(
          borderSide: BorderSide(color:  Colors.white),
        ),
        focusedBorder:UnderlineInputBorder(
          borderSide: BorderSide(color:  Colors.white),
        ),
      ),
      style: TextStyle(
        color: Colors.white
      ),
    );
  }
}
