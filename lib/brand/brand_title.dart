import 'package:flutter/material.dart';

class BrandTitleECA extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;

  const BrandTitleECA({
    Key? key,
    required this.title,
    required this.color,
    this.fontSize: 62,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
