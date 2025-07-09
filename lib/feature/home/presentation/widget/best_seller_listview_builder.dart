import 'package:bookly/feature/home/presentation/widget/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewBuilder extends StatelessWidget {
  const BestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSallerItem();
        },
      ),
    );
  }
}
