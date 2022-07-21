import 'package:flutter/material.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';
import 'package:walt/components/components.dart';

class AuthProvider extends ChangeNotifier{
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool _phoneAdd = false;
  bool get phoneAdd => _phoneAdd;
  bool _buttonIsActive = false;
  bool get buttonIsActive => _buttonIsActive;
void changePassword(value)
{
buttonActive();
notifyListeners();
}
void phoneCompleted(value)
{
  if(value.length==phoneFormatter.mask?.length)
    {
      _phoneAdd = true;
    }
  else
    {
      _phoneAdd = false;
    }
  buttonActive();
  notifyListeners();
}
void buttonActive()
{
  if(phoneAdd&&passwordController.text.isNotEmpty)
    {
      _buttonIsActive = true;
    }
  else
    {
      _buttonIsActive = false;
    }
  notifyListeners();
}

}