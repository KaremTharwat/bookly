import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRateAndPrice extends StatelessWidget {
  const CustomRateAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "19.99 \$",
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 40),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text("4.8", style: Styles.textStyle16),
        ),
        Text(
          "(245)",
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
