import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.onPressed, required this.text});
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:ColorsApp.kPrimryColor,
          elevation: 6,
          shadowColor:ColorsApp.kPrimryColor,
        ),
        child: CustomText(text: text, fontSize: 16),
      ),
    );
  }
}
