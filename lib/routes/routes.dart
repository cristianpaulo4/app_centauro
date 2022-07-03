import 'package:app_centauro/features/home/presentation/pages/home_page.dart';
import 'package:app_centauro/features/shop_car/presentation/pages/shop_car_page.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static String home = "/home";
  static String shop_car = "/shop_car";

  static Map<String, WidgetBuilder> routes = {
    home: (context) {
      return HomePage();
    },
    shop_car :(context) {
      return ShopCarPage();
    }
  };
}
