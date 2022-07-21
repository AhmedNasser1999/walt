import 'package:flutter/material.dart';
import 'package:walt/components/image_path.dart';
import 'package:walt/screens/on_boarding/boarding_model.dart';

class OnBoardingProvider extends ChangeNotifier {
  List<BoardingModel> boardingList = [
    BoardingModel(
      image: ImagePath.boarding1,
      title: 'Leading Payment Application',
      description:
          'More than 100 million users with 1,000 thousand partners and services in the world',
    ),
    BoardingModel(
      image: ImagePath.boarding2,
      title: 'Prestige and Absolute Security ',
      description:
          'Licensed by all banks in the world & secured with multi-tier PCI-DSS international standards',
    ),
    BoardingModel(
        image: ImagePath.boarding3,
        title: 'Receive "Hot" Gifts from Value Wallet  Right Away',
        description:
            'Sign up now to receive a large gift pack. Eating, watching movies & many other services.'),
  ];
  PageController controller = PageController(initialPage: 0);
  int _currentPage = 0;
  int get currentPage => _currentPage;
  void pageChange(int page) {
    _currentPage = page;
    notifyListeners();
  }

  void pageChangeNext() {
    controller.nextPage(
        duration: const Duration(
          milliseconds: 250,
        ),
        curve: Curves.ease);
    notifyListeners();
  }
}
