import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/ui/shared/app_color.dart';

class AppCofig extends ChangeNotifier {
  final ThemeData themeData = ThemeData(
      primaryColor: AppColor.primaryColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: AppColor.primaryColor)),
      fontFamily: 'Segeo',
      scaffoldBackgroundColor: AppColor.backgroundColor,
      cursorColor: AppColor.darkGrey,
      textTheme: TextTheme(
          bodyText1: TextStyle(
        color: AppColor.blackColor,
      )));
  String _appLanguageCode;

  String get appLanguageCode => _appLanguageCode;
}
