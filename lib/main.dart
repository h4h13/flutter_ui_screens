import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/enums.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common/constants.dart' as constans;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '30 Days UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: AppRoutes.splashScreenPage.path,
      routes: constans.routes(),
    );
  }
}
