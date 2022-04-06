import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:travel_app/constants/string_constant.dart';
import 'package:travel_app/not_found/not_found.dart';
import 'package:travel_app/pages/anasayfa.dart';
import 'package:travel_app/pages/homepage/homepage.dart';
import 'package:travel_app/pages/login/login.dart';
import 'package:travel_app/pages/register/register.dart';
import 'package:travel_app/pages/sifremi_unuttum.dart';
import 'package:travel_app/pages/splash/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: TravelString.appName,
        initialRoute: TravelRoute.login,
        routes: {
          TravelRoute.splash: (context) => const SplashScreen(),
          TravelRoute.login: (context) => const LoginScreen(),
          TravelRoute.register: (context) => const RegisterScreen(),
          TravelRoute.homepage: (context) => const HomepageScreen(),
        },
        onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => const NotFound(),
        ),
        theme: theme,
      ),
    );
  }
}

ThemeData theme = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
);
