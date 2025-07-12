import 'package:bookly/feature/home/presentation/widget/custom_apppbar.dart';
import 'package:bookly/feature/home/presentation/widget/homeview_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "/";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: CustomHomeAppBar(), body: HomeViewBody());
  }
}
