import 'package:flutter/material.dart';

import 'textStyle.dart';

class TextfeildWid extends StatelessWidget {
  TextfeildWid(
      {super.key,
      required this.text,
      required this.icon,
      this.icon1,
      required this.col});
  String text;
  IconData icon;
  IconData? icon1 = Icons.remove_red_eye;
  Color col = Colors.white;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label:
              TextStyle1(fz: 16, fw: FontWeight.normal, color: col, text: text),
          prefixIcon: Icon(
            icon,
            color: col,
          ),
          suffixIcon: Icon(
            icon1,
            color: col,
          )),
    );
  }
}
