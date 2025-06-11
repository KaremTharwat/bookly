import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color = Colors.white,
    this.fontWeight = FontWeight.normal,
  });
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, color: color,fontWeight:fontWeight ),
      textAlign: TextAlign.center,
    );
  }
}
