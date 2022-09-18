import 'package:flutter/material.dart';
import 'iPhone6782.dart';
import 'package:masa0_0_1/test_login/LoginPage1.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Validate Phone Number",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.rugeBoogieTextTheme(),
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      backgroundColor: Colors.white,
      image: Image.asset('assets/coat.gif'),
      loaderColor: Colors.blue,
      photoSize: 250,
      navigateAfterSeconds: Login(),
    );
  }
}
