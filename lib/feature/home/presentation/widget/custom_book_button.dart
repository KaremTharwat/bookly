import 'package:flutter/material.dart';

class BookButtons extends StatelessWidget {
  const BookButtons({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    required this.textColor,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 46,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          child: Text(text, style: TextStyle(color: textColor)),
        ),
      ),
    );
  }
}

