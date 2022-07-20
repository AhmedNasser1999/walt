import 'package:flutter/material.dart';
import 'package:walt/screens/password_recovery/getting_started.dart';
import 'package:walt/screens/password_recovery/passwordrecovery.dart';
import 'package:walt/screens/password_recovery/resetpassword.dart';
import 'package:walt/screens/password_recovery/verifyidentity.dart';
import 'package:walt/screens/top_up/confirm_toUP.dart';
import 'package:walt/screens/top_up/popup.dart';
import 'package:walt/screens/top_up/top_up.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: ConfirmToUpScreen()
        ,
    );
  }
}

