import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/DI/di.dart';
import 'package:aviz/Features/Category/view/category_screen.dart';
import 'package:aviz/Features/DetailPromotion/view/detail_promotion_screen.dart';
import 'package:aviz/Features/Home/view/home_screen.dart';
import 'package:aviz/Features/Profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  await getInInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
              fontSize: 14,
              fontFamily: 'dana',
              fontWeight: FontWeight.bold,
              color: Color(0xff101828)),
          bodySmall: TextStyle(
              fontSize: 14,
              fontFamily: 'dana',
              fontWeight: FontWeight.w400,
              color: CustomColor.textGery),
          labelMedium: const TextStyle(
            color: CustomColor.customRed,
            fontSize: 15,
            fontFamily: 'dana',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: ProfileScreen(),
    );
  }
}
