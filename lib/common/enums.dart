enum AppRoutes {
  splashScreenPage,
  homePage,
  signUpPage,
  landingPage,
}

extension AppRoutesMappsing on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.homePage:
        return '/home';
      case AppRoutes.splashScreenPage:
        return '/';
      case AppRoutes.signUpPage:
        return '/signup';
      case AppRoutes.landingPage:
        return '/landing';
    }
  }
}
