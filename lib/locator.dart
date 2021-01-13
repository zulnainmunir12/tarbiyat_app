import 'package:get_it/get_it.dart';
//import 'package:quiznoscr/core/service/api.dart';
import 'package:tarbiyat_app/core/services/navigation_services.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
//  locator.registerFactory(() => Api());
  locator.registerLazySingleton(() => NavigationService());
}