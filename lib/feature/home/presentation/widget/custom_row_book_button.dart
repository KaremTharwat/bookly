import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/home/presentation/widget/custom_book_button.dart';
import 'package:flutter/material.dart';

class CustomRowButtonAction extends StatelessWidget {
  const CustomRowButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BookButtons(
          text: "19.99 \$",
          textColor: Colors.black,
          backgroundColor: ColorsApp.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        BookButtons(
          text: "Free Review",
          textColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 189, 39, 89),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ],
    );
  }
}
