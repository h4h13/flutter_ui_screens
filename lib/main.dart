import 'package:flutter/material.dart';
import 'package:flutter_100_screens/common/enums.dart';
import 'package:flutter_100_screens/pages/list_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common/constants.dart' as constans;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100 Screens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: AppRoutes.listPage.path,
      routes: constans.routes(),
    );
  }
}
