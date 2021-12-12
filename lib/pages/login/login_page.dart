import 'package:flutter/material.dart';
import 'package:flutter_100_screens/pages/login/login_mobile.dart';
import 'package:flutter_100_screens/pages/login/login_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final LoginModel model = LoginModel();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginMobilePage(model: model),
      tablet: LoginTabletPage(model: model),
    );
  }
}

class LoginModel extends ChangeNotifier {
  late bool isLoading = false;
  void init() {}

  String? validateEmail(String? value) {
    if (value == null) return null;
    return value.isValidEmail() ? null : 'Check email';
  }

  Future<bool> login() {
    isLoading = true;

    return Future.delayed(const Duration(seconds: 5)).then((value) {
      isLoading = false;
      return true;
    });
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
