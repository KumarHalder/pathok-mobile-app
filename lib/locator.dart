import 'package:get_it/get_it.dart';
import 'package:pathok_app/services/storeService.dart';
import 'package:pathok_app/utils/Constants.dart';

final GetIt locator = GetIt();

void setUpLocator() {
  locator.registerLazySingleton(
      () => storeService(Constants.baseUrl), "storeService");
}
