import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(image: const AssetImage(Assets.book), height: height),
      ),
    );
  }
}
