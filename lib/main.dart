import 'package:flutter/material.dart';
import 'package:moolah/Confirmappointment.dart';
import 'package:moolah/Screens/splashscreen.dart';
import 'package:moolah/Success.dart';
import 'package:moolah/dashboards/Avisorscreens/advisor.dart';

import 'chatDetailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moolah',
      theme: ThemeData(
          primaryColor: const MaterialColor(0xFF3A0072, {
            50: Color(0xFF3A0072),
            100: Color(0xFF3A0072),
            200: Color(0xFF3A0072),
            300: Color(0xFF3A0072),
            400: Color(0xFF3A0072),
            500: Color(0xFF3A0072),
            600: Color(0xFF3A0072),
            700: Color(0xFF3A0072),
            800: Color(0xFF3A0072),
            900: Color(0xFF3A0072),
          }),     
          ),
      home: const Splashscreen(),
    );
  }
}
