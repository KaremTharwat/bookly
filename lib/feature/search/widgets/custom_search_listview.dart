import 'package:bookly/feature/home/presentation/widget/book_item.dart';
import 'package:flutter/material.dart';

class SearchListViewBuilder extends StatelessWidget {
  const SearchListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const BookItem();
      },
    );
  }
}
