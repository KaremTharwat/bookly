import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/widget/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSallerItem extends StatelessWidget {
  const BestSallerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          const CustomItem(height: 150),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Harry potter and the Goblet of Fire",
                  style: Styles.textStyle20.copyWith(
                    fontFamily: fontIrishGrover,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Text(
                  "J.K Rowling",
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
              ),
              Row(
                children: [
                  Text(
                    "19.99 \$",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 40),
                  const Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("4.8", style: Styles.textStyle16),
                  ),
                  Text(
                    "(245)",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

