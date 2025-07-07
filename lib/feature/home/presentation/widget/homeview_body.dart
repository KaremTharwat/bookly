import 'package:bookly/feature/home/presentation/widget/custom_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(12),
      child: const Column(children: [CustomItem()]),
    );
  }
}
