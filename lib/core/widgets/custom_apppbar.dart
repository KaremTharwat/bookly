import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/constans.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 115,
      actionsPadding: const EdgeInsets.all(12),
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Image.asset(Assets.logo),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: ColorsApp.whiteColor, size: 35),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
