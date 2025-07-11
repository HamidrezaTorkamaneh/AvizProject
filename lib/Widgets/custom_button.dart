import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/Widgets/custom_icons.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String icon;
  Color iconColor;
  double iconSize;
  String text;
  CustomButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: CustomColor.customRed),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIcons(icon: icon, color: iconColor, size: iconSize),
          SizedBox(width: 10),
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
