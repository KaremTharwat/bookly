import 'package:bookly/feature/search/widgets/custom_search_listview.dart';
import 'package:bookly/feature/search/widgets/custom_textformfaild.dart';
import 'package:flutter/material.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomTextFormField(),
          Expanded(child: SearchListViewBuilder()),
        ],
      ),
    );
  }
}
