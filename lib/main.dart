import 'package:flutter/material.dart';
import 'package:walt/screens/Fingerprint_Screen.dart';
import 'package:walt/screens/OTP_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: OtpScreen(),
    );
  }
}
