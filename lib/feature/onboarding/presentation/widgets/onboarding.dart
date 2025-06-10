import 'package:bookly/feature/onboarding/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key, required this.imagePath, required this.title, required this.des});
  final String imagePath;
  final String title;
  final String des;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Skip"),
        Image.asset(imagePath),
        SizedBox(height: 30),
        CustomText(text: title, fontSize: 20),
        CustomText(
          text:
              des,
          fontSize: 13,
        ),
      ],
    );
  }
}
