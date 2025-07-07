import 'package:bookly/feature/home/presentation/widget/custom_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Column(children: [CustomListViewBuilder()]),
    );
  }
}

