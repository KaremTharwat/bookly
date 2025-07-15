import 'package:bookly/feature/home/presentation/widget/best_seller_item.dart';
import 'package:flutter/material.dart';

class SliverListBuilder extends StatelessWidget {
  const SliverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BestSallerItem();
      },
    );
  }
}
