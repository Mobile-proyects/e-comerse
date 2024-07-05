import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Defaultbutton extends StatelessWidget {
  String text;
  Function() onPressed;
  Color color;

  Defaultbutton({
      required this.text,
      required this.onPressed,
      this.color = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: color
        ),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
