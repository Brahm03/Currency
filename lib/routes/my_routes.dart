import 'package:currency/models/currency_models.dart';
import 'package:currency/screens/home_page/home_page.dart';
import 'package:currency/screens/main_page.dart';
import 'package:currency/screens/setting/settings_page.dart';
import 'package:currency/screens/slashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/main':
        return MaterialPageRoute(builder: (_) => const MainPage());
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  currencyModel: args as List<CurrencyModel>,
                ));
      case '/settings':
        return MaterialPageRoute(builder: (_) => const Settings());
    }
  }
}
