import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Defaulticonback extends StatelessWidget {

  double left;
  double top;

  Defaulticonback({
    required this.left,
    required this.top,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: left, top: top),
      child: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
