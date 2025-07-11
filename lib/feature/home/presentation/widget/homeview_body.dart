import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/widget/best_seller_sliverlist_builder.dart';
import 'package:bookly/feature/home/presentation/widget/custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomListViewBuilder()),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(
            child: Text("Best Seller", style: Styles.textStyle20),
          ),
          BestSellerSliverListBuilder(),
        ],
      ),
    );
  }
}
