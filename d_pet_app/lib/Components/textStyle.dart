import 'package:flutter/material.dart';

class TextStyle1 extends StatelessWidget {
  TextStyle1(
      {super.key,
      required this.fz,
      required this.fw,
      required this.color,
      required this.text});
  double fz = 24;
  FontWeight fw = FontWeight.bold;
  Color color = Colors.white;
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fz, fontWeight: fw, color: color),
    );
  }
}
