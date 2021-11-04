import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/enums.dart';
import 'package:flutter_100_screens/pages/home_page.dart';
import 'package:flutter_100_screens/pages/landing_page.dart';
import 'package:flutter_100_screens/pages/signup_page.dart';
import 'package:flutter_100_screens/pages/splash_screen_page.dart';

List<Map<String, dynamic>> days = [
  {
    'name': 'Sign Up Page',
    'route': AppRoutes.signUpPage.path,
  },
  {
    'name': 'Landing Page',
    'route': AppRoutes.landingPage.path,
  },
];

Map<String, WidgetBuilder> routes() {
  return {
    AppRoutes.homePage.path: (_) => const MyHomePage(),
    AppRoutes.signUpPage.path: (_) => const SignUpPage(),
    AppRoutes.landingPage.path: (_) => const LandingPage(),
    AppRoutes.splashScreenPage.path: (_) => SplashScreenPage(
          model: SplashScreenModel(),
        ),
  };
}
