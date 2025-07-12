import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/widget/custom_book_rating.dart';
import 'package:bookly/feature/home/presentation/widget/custom_item.dart';
import 'package:bookly/feature/home/presentation/widget/custom_row_book_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          const CustomItem(height: 250),
          const SizedBox(height: 42),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(fontFamily: fontIrishGrover),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 6, bottom: 18),
            child: Opacity(
              opacity: .7,
              child: Text("Rudyard Kipling", style: Styles.textStyle18),
            ),
          ),
          const CustomBookRating(),
          const SizedBox(height: 31),
          const CustomRowButtonAction(),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomItem(height: 100);
              },
            ),
          ),
        ],
      ),
    );
  }
}

