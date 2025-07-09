import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/widget/custom_item.dart';
import 'package:bookly/feature/home/presentation/widget/custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomListViewBuilder(),
          SizedBox(height: 40),
          Text("Best Seller", style: Styles.textStyle20),
          Row(children: [CustomItem(height: 150), Column(children: [
              
            ],
          )]),
        ],
      ),
    );
  }
}
