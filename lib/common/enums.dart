enum AppRoutes {
  splashScreenPage,
  listPage,
  signUpPage,
  landingPage,
  loginPage,
  localAuth,
}

extension AppRoutesMappsing on AppRoutes {
  String get path {
    switch (this) {
      case AppRoutes.listPage:
        return '/home';
      case AppRoutes.splashScreenPage:
        return '/';
      case AppRoutes.signUpPage:
        return '/signup';
      case AppRoutes.landingPage:
        return '/landing';
      case AppRoutes.loginPage:
        return '/login';
      case AppRoutes.localAuth:
        return '/local-auth';
    }
  }
}
