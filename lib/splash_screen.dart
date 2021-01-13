
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/core/services/navigation_services.dart';
import 'package:tarbiyat_app/locator.dart';
import 'package:tarbiyat_app/router.dart';
import 'package:tarbiyat_app/ui/shared/app_color.dart';
import 'package:tarbiyat_app/ui/shared/font_size.dart';

class SplashScreenView extends StatefulWidget{
  _SplashScreenViewState createState() => _SplashScreenViewState();
}
class _SplashScreenViewState extends State<SplashScreenView>{
  final NavigationService _navigationService = locator<NavigationService>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),
            () => _navigationService.navigateTo(NavigationRouter.bottomNavigation));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end:Alignment.bottomCenter,
          stops: [0.1,0.3,0.7,0.9],
          colors: [AppColor.greenColor,AppColor.secondaryColor]
        )
      ),
      child: Scaffold(
        body: Center(
          child: Text(
            'Tarbiyat n\ Islam',style: TextStyle(
            color: AppColor.whiteColor,fontSize:FontSize.xxxxl,fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}