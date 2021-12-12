import 'package:flutter/material.dart';
import 'package:flutter_100_screens/pages/landing/landing_mobile.dart';
import 'package:flutter_100_screens/pages/landing/landing_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LandingMobilePage(),
      tablet: const LandingTabletPage(),
    );
  }
}
