import 'package:bookly/feature/search/widgets/searchview_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
static const String routeName = '/searchview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SearchviewBody(),
    );
  }
}