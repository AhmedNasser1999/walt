import 'package:flutter/cupertino.dart';

class OTPProvider with ChangeNotifier{
  bool isPain=false;
  changeIsPain(s){
    s=='1111'?isPain=true:isPain=false;
    notifyListeners();
  }
}