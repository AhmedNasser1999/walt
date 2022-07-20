import 'package:flutter/material.dart';

class Provider1 with ChangeNotifier{
 bool isPain=false;
  changeIsPain(s){
    s=='1234'?isPain=true:isPain=false;
    notifyListeners();
  }
}
class Provider2 with ChangeNotifier{
   String newPassword='';
   String confirmPassword='';
  onChangeNew(val){
    newPassword=val;
    notifyListeners();
  }
   onChangeConf(val){
     confirmPassword=val;
     notifyListeners();
   }
}
class Provider3 with ChangeNotifier{
  bool isCheck=false;
  onTap(){
    isCheck=!isCheck;
    notifyListeners();
  }
  String name='';
  String phone='';
  String password='';
  changeName(val){
    name=val;
    notifyListeners();
  }
  changePhone(val){
    phone=val;
    notifyListeners();
  }
  changePassword(val){
    password=val;
    notifyListeners();
  }
}