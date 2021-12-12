import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/enums.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final SplashScreenModel model;

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    widget.model.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyan.shade100,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Text(
                '30 \ndays'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:
                      Theme.of(context).primaryTextTheme.headline6?.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              radius: 48.0,
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: Text(
                'UI Challenge',
                style: TextStyle(
                  fontSize:
                      Theme.of(context).primaryTextTheme.headline6?.fontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreenModel {
  void init(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.pushReplacementNamed(context, AppRoutes.listPage.path));
  }
}
