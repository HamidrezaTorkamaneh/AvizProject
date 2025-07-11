import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/Util/number_extention.dart';
import 'package:aviz/Widgets/chached_network_image.dart';
import 'package:aviz/Widgets/custom_button.dart';
import 'package:aviz/Widgets/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailPromotionScreen extends StatelessWidget {
  final Promotion promotion;
  const DetailPromotionScreen(this.promotion, {super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      title: Image.asset(
                          "assets/images/logo_with_not_background.png"),
                      centerTitle: true,
                      backgroundColor: Colors.transparent,
                      leading: Icon(Icons.arrow_back_ios),
                      actions: [
                        CustomIcons(
                            icon: 'information', color: Colors.black, size: 24),
                        SizedBox(width: 20),
                        CustomIcons(
                            icon: 'share', color: Colors.black, size: 24),
                        SizedBox(width: 20),
                        CustomIcons(icon: 'save', color: Colors.black, size: 24)
                      ],
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 32),
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red,
                        ),  
                        child: CachedImage(
                          imageUrl: promotion.thumbnailUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 30,
                            decoration: BoxDecoration(
                              color: CustomColor.lightGrey1,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                promotion.house_type,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(fontSize: 12),
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            '۱۶ دقیقه پیش در گرگان',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 12,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 35)),
                    SliverToBoxAdapter(
                      child: Text(
                        promotion.title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 16),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverToBoxAdapter(
                      child: Text(
                        promotion.description,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 60)),
                    SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: CustomColor.lightGrey1),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'هشدار های قبل از معامله!',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            Spacer(),
                            CustomIcons(
                              icon: 'arrow_forward',
                              color: CustomColor.lightGrey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'متراژ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  promotion.width.toString(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              indent: 10,
                              color: CustomColor.lightGrey,
                              thickness: 1.5,
                              width: 40,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'سال ساخت',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  promotion.year_build.toString(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              indent: 10,
                              color: CustomColor.lightGrey,
                              thickness: 1.5,
                              width: 40,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  'اتاق',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(height: 15),
                                Text(
                                  promotion.rooms.toString(),
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 30)),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'قیمت:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 14,
                                        color: CustomColor.textGery,
                                      ),
                                ),
                                Spacer(),
                                Text(
                                  promotion.price.convertToPrice(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'قیمت بر متر:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 14,
                                        color: CustomColor.textGery,
                                      ),
                                ),
                                Spacer(),
                                Text(
                                  promotion.price_of_metre.convertToPrice(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'طبقه:',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 14,
                                        color: CustomColor.textGery,
                                      ),
                                ),
                                Spacer(),
                                Text(
                                  promotion.floor.convertToPrice(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 30)),
                    SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: CustomColor.lightGrey1),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'گزارش آگهی!',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            Spacer(),
                            CustomIcons(
                              icon: 'arrow_forward',
                              color: CustomColor.lightGrey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 100,
                      ),
                    )
                  ],
                ),
                CustomButton(
                    icon: 'phone',
                    iconColor: Colors.white,
                    iconSize: 20,
                    text: 'اطلاعات تماس')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
