import 'package:bookly/feature/home/presentation/widget/book_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverListBuilder extends StatelessWidget {
  const BestSellerSliverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BookItem();
      },
    );
  }
}
