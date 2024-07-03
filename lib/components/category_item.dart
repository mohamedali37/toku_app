import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.tap});
  String? text;
  Color? color;
  VoidCallback? tap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
        child: Container(
      padding: const EdgeInsets.only(left: 17),
      alignment: Alignment.centerLeft,
      height: 80,
      width: double.infinity,
      color: color,
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    ),
    );
  }
}
