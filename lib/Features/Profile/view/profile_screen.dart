import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/Widgets/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  title:
                      Image.asset("assets/images/logo_with_not_background.png"),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                ),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      CustomIcons(
                          icon: 'user', color: CustomColor.customRed, size: 24),
                      SizedBox(width: 10),
                      Text(
                        'حساب کاربری',
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  color: Colors.black,
                                ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 25)),
                SliverToBoxAdapter(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    height: 95,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(width: 1, color: CustomColor.lightGrey1),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'حمیدرضا ترکمانه',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  '09386168817',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 66,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: CustomColor.customRed,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'تایید نشده',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            color: Colors.white,
                                            fontSize: 9,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        CustomIcons(
                          icon: 'edit',
                          color: CustomColor.customRed,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 30)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: 50,
                    child: Divider(
                      indent: 10,
                      color: CustomColor.lightGrey1,
                      thickness: 1.5,
                      height: 40,
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 30)),
                SliverToBoxAdapter(
                  child: Container(
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
                        CustomIcons(
                            icon: 'save',
                            color: CustomColor.customRed,
                            size: 22),
                        SizedBox(width: 10),
                        Text('آگهی های من',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: Colors.black,
                                )),
                        Spacer(),
                        CustomIcons(
                            icon: 'arrow_forward',
                            color: CustomColor.lightGrey1,
                            size: 22)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
