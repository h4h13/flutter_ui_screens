import 'package:flutter/material.dart';
import 'package:flutter_100_screens/pages/local_auth/local_auth_mobile.dart';
import 'package:flutter_100_screens/pages/local_auth/local_auth_tablet.dart';
import 'package:local_auth/local_auth.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LocalAuthPage extends StatelessWidget {
  const LocalAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LocalAuthMobile(),
      tablet: LocalAuthTablet(
        localAuth: LocalAuthentication(),
      ),
    );
  }
}
