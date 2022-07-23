import 'package:flutter/material.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/screens/home_screen.dart';
import 'package:walt/screens/on_boarding/on_boarding_screen.dart';
import 'package:walt/screens/password_recovery/passwordrecovery.dart';
import 'package:walt/screens/password_recovery/verifyidentity.dart';
import 'package:walt/screens/top_up/top_up.dart';
import 'package:walt/screens/top_up/transferdetails.dart';
import 'package:walt/screens/top_up/withdraw_authentication.dart';

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
      home:  WithdrawAuthenticationScreen(),
    );
  }
}
