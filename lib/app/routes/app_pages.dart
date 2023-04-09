import 'package:get/get.dart';

import '../modules/food/food_binding.dart';
import '../modules/food/food_view.dart';
import '../modules/main_page/main_page_binding.dart';
import '../modules/main_page/main_page_view.dart';
import '../modules/map/map_binding.dart';
import '../modules/map/map_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () => const MainPageView(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: _Paths.FOOD,
      page: () => const FoodView(),
      binding: FoodBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => const MapView(),
      binding: MapBinding(),
    ),
  ];
}
