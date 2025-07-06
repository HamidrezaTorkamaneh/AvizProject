import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/Features/Category/data/model/category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: CustomColor.gery, width: 1),
      ),
      child: Center(
          child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: CustomColor.customRed,
          ),
          Spacer(),
          Text(
            category.name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      )),
    );
  }
}
