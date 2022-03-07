import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:currency/core/components/theme_app.dart';
import 'package:currency/routes/my_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final MyRoutes _myRoutes = MyRoutes();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeAPP.light,
        dark: ThemeAPP.dark,
        initial: AdaptiveThemeMode.dark,
        builder: (light, dark) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Currency app',
            theme: light,
            darkTheme: dark,
            initialRoute: '/',
            onGenerateRoute: _myRoutes.onGenerateRoute,
          );
        });
  }
}
