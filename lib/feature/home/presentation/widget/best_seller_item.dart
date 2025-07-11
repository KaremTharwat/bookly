import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_book_rating.dart';
import 'package:bookly/feature/home/presentation/book_details_view.dart';
import 'package:bookly/feature/home/presentation/widget/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerItem extends StatelessWidget {
  const BestSallerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(BookDetailsView.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 10),
        child: Row(
          children: [
            const CustomItem(height: 150),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Harry potter and the Goblet of Fire",
                    style: Styles.textStyle20.copyWith(
                      fontFamily: fontIrishGrover,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Text(
                    "J.K Rowling",
                    style: Styles.textStyle14.copyWith(color: Colors.grey),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "19.99 \$",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 40),
                   const CustomBookRating(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

