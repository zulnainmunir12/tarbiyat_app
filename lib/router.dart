import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarbiyat_app/splash_screen.dart';
import 'package:tarbiyat_app/widget/bottom_navigation.dart';

class NavigationRouter {
  static const String splashScreen = 'SplashScreen';
  static const String bottomNavigation = 'BottomNavigation';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_)=>SplashScreenView());
      case bottomNavigation:
        return MaterialPageRoute(builder: (_)=>MyBottomNavigationBar());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
