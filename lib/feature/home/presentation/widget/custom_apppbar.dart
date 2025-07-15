import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/search/presentation/search_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomHomeAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      leadingWidth: 115,
      actionsPadding: const EdgeInsets.all(12),
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Image.asset(Assets.logo),
      ),
      actions: [
        IconButton(onPressed: () {
          GoRouter.of(context).push(SearchView.routeName);
        }, icon: const Icon(Icons.search, size: 35)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
