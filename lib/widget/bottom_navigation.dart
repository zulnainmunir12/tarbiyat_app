import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/core/services/navigation_services.dart';
import 'package:tarbiyat_app/locator.dart';
import 'package:tarbiyat_app/ui/shared/app_color.dart';
import 'package:tarbiyat_app/ui/shared/font_size.dart';
import 'package:tarbiyat_app/ui/view/home_screens/hadith_screen.dart';
import 'package:tarbiyat_app/ui/view/home_screens/home_screen.dart';
import 'package:tarbiyat_app/ui/view/home_screens/more_screen.dart';
import 'package:tarbiyat_app/ui/view/home_screens/quran_screen.dart';
import 'package:tarbiyat_app/ui/view/home_screens/worship_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  final NavigationService _navigationService = locator<NavigationService>();
  int _currentIndex = 0;

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _children = [
    QuranScreenView(),
    HadithScreenView(),
    HomeScreenView(),
    WorshipScreenView(),
    MoreScreenView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColor.whiteColor,
      currentIndex: _currentIndex,
      iconSize: 30,
      selectedFontSize: FontSize.l,
      unselectedFontSize: FontSize.m,
      selectedItemColor: AppColor.primaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book_outlined),
          label: 'Quran',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_online),
          label: 'Hadith',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store_mall_directory_sharp),
          label: 'Worship',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'More',
        ),
      ],
      onTap: onTappedBar,
    );
  }
}
