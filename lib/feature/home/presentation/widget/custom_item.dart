import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const Image(image: AssetImage(Assets.book), height: 200),
      ),
    );
  }
}
