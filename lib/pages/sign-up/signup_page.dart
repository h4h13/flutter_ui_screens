import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/constants.dart';
import 'package:flutter_100_screens/pages/sign-up/signup_mobile.dart';
import 'package:flutter_100_screens/pages/sign-up/signup_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const SignUpMobilePage(),
      tablet: const SignUpTabletPage(),
    );
  }
}
