import 'package:flutter/material.dart';
import 'package:tarbiyat_app/core/app_config/app_config.dart';
import 'package:tarbiyat_app/core/services/scroll_bahviour.dart';
import 'package:tarbiyat_app/locator.dart';
import 'package:tarbiyat_app/router.dart';
import 'core/services/navigation_services.dart';

AppCofig _appCofig = AppCofig();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Tarbiyat Islam',
      onGenerateRoute: NavigationRouter.generateRoute,
      initialRoute: NavigationRouter.splashScreen,
      navigatorKey: locator<NavigationService>().navigatorKey,
      theme: _appCofig.themeData,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: RemoveScrollGlow(),
          child: child,
        );
      },
    );
  }
}
