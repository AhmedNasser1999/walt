import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
Color primaryColor=HexColor('#FEC42D');
Color backColor=HexColor('#EAEFFF');
Color iconColor=HexColor('#42526E');
Color textColor=HexColor('#C1C7D0');
Color textButtonColor = HexColor('#172B4D');
Color disablePrimaryColor = HexColor('#FEC42D');
Color accentButtonColor = HexColor('#F4F5F7');
Color white = Colors.white;

MaterialColor primarySwatch = MaterialColor(primaryColor.value, {
  50: primaryColor.withOpacity(0.1),
  100: primaryColor.withOpacity(0.2),
  200: primaryColor.withOpacity(0.3),
  300: primaryColor.withOpacity(0.4),
  400: primaryColor.withOpacity(0.5),
  500: primaryColor.withOpacity(0.6),
  600: primaryColor.withOpacity(0.7),
  700: primaryColor.withOpacity(0.8),
  800: primaryColor.withOpacity(0.9),
  900: primaryColor.withOpacity(1),
});
