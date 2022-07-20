import 'package:flutter/material.dart';
import 'package:walt/components/image_path.dart';
import 'package:walt/screens/card/card_choice_model.dart';

class CardProvider extends ChangeNotifier{
  List<CardChoiceModel> choicesBank = [
    CardChoiceModel('HSBC',ImagePath.hsbc),
    CardChoiceModel('Citibank',ImagePath.citibank),
    CardChoiceModel('Bank of A…',ImagePath.america),
    CardChoiceModel('Deutsche',ImagePath.deutsche),
    CardChoiceModel('Mizuho',ImagePath.mizuho),
    CardChoiceModel('Santander',ImagePath.stander),
    CardChoiceModel('MUFG',ImagePath.mufg),
    CardChoiceModel('Barclays',ImagePath.barclay),

  ];
  List<CardChoiceModel> choicesInternational = [
    CardChoiceModel('Paypal',ImagePath.paypal),
    CardChoiceModel('Visa',ImagePath.visa),
    CardChoiceModel('Mastercard',ImagePath.mastercard),
    CardChoiceModel('Payoneer',ImagePath.payoneer),
  ];
}