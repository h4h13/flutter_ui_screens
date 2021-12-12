import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/enums.dart';
import 'package:flutter_100_screens/pages/list_page.dart';
import 'package:flutter_100_screens/pages/landing/landing_page.dart';
import 'package:flutter_100_screens/pages/local_auth/local_auth_page.dart';
import 'package:flutter_100_screens/pages/login/login_page.dart';
import 'package:flutter_100_screens/pages/sign-up/signup_page.dart';
import 'package:flutter_100_screens/pages/splash_screen_page.dart';

const kPrimaryColor = Color(0xFF6C63FF);

class Day {
  final int day;
  final String name;
  final AppRoutes appRoutes;

  Day({
    required this.day,
    required this.name,
    required this.appRoutes,
  });
}

List<Day> days = [
  Day(
      day: 1,
      name: 'Splash Screen Page',
      appRoutes: AppRoutes.splashScreenPage),
  Day(day: 2, name: 'Landing Page', appRoutes: AppRoutes.landingPage),
  Day(day: 3, name: 'Sign Up Page', appRoutes: AppRoutes.signUpPage),
  Day(day: 4, name: 'Login Page', appRoutes: AppRoutes.loginPage),
  Day(day: 5, name: 'Local Auth Page', appRoutes: AppRoutes.localAuth),
];

Map<String, WidgetBuilder> routes() {
  return {
    AppRoutes.listPage.path: (_) => const ListPage(),
    AppRoutes.signUpPage.path: (_) => const SignUpPage(),
    AppRoutes.landingPage.path: (_) => const LandingPage(),
    AppRoutes.splashScreenPage.path: (_) =>
        SplashScreenPage(model: SplashScreenModel()),
    AppRoutes.loginPage.path: (_) => LoginPage(),
    AppRoutes.localAuth.path: (_) => const LocalAuthPage(),
  };
}
