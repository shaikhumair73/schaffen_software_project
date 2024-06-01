import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Row extends StatelessWidget {
  String? MyText;
  IconData? icon;
  Color? color;
  My_Row({required this.MyText, required this.icon, required this.color});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            MyText!,
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
