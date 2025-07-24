import 'package:aviz/Constants/color_constants.dart';
import 'package:aviz/DI/di.dart';
import 'package:aviz/Features/Category/view/category_screen.dart';
import 'package:aviz/Features/DetailPromotion/view/detail_promotion_screen.dart';
import 'package:aviz/Features/Home/view/home_screen.dart';
import 'package:aviz/Features/Profile/view/profile_screen.dart';
import 'package:aviz/Features/Search/view/search_screen.dart';
import 'package:aviz/Widgets/custom_icons.dart';
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
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedItem = 0;
  PageController _pageController = PageController();
  var screens = [
    ProfileScreen(),
    CategoryScreen(),
    SearchScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: CustomColor.customRed),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'dana',
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.amber),
        items: [
          BottomNavigationBarItem(
            icon: CustomIcons(
                icon: 'profile-circle',
                color: _selectedItem == 0 ? CustomColor.customRed : Colors.grey,
                size: 25),
            label: 'آویز من',
          ),
          BottomNavigationBarItem(
            icon: CustomIcons(
                icon: 'add-circle',
                color: _selectedItem == 1 ? CustomColor.customRed : Colors.grey,
                size: 25),
            label: 'افزودن آویز',
          ),
          BottomNavigationBarItem(
            icon: CustomIcons(
                icon: 'search',
                color: _selectedItem == 2 ? CustomColor.customRed : Colors.grey,
                size: 25),
            label: 'جستجو',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedItem == 3 ? CustomColor.customRed : Colors.grey,
            ),
            label: 'آویز آگهی ها',
          ),
        ],
        currentIndex: _selectedItem,
        selectedItemColor: CustomColor.customRed,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.jumpToPage(index); //
          });
        },
      ),
    );
  }
}
