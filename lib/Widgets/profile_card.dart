import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/Features/Profile/data/model/profile.dart';
import 'package:aviz/Widgets/chached_network_image.dart';
import 'package:aviz/Widgets/custom_icons.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final Profile profile;
  const ProfileCard(this.profile, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: CustomColor.lightGrey1,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 25,
            width: 25,
            child: CachedImage(
              imageUrl: profile.icon,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10),
          Text(profile.text,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Colors.black,
                  )),
          Spacer(),
          CustomIcons(
              icon: 'arrow_forward', color: CustomColor.lightGrey1, size: 22)
        ],
      ),
    );
  }
}
