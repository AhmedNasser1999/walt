import 'package:flutter/material.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/screens/on_boarding/on_boarding_screen.dart';
import 'package:walt/screens/password_recovery/passwordrecovery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backColor,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: backColor,
        ),
        primarySwatch: primarySwatch,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
