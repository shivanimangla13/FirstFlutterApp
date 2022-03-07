import 'package:first_application/Pages/home_page.dart';
import 'package:first_application/Pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primarySwatch: Colors.grey,
          fontFamily: GoogleFonts.lato().fontFamily),
    );
  }
}
