import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walt/Providers/on_boarding_provider.dart';
import 'package:walt/components/components.dart';
import 'package:walt/screens/auth/log_in.dart';
import 'package:walt/screens/on_boarding/on_boarding_component.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OnBoardingProvider(),
      builder: (context, child) {
        var provider = Provider.of<OnBoardingProvider>(context);
        return Scaffold(
          body: PageView.builder(
            itemCount: provider.boardingList.length,
            controller: provider.controller,
            onPageChanged: (value) {
              provider.pageChange(value);
            },
            itemBuilder: (BuildContext context, int index) {
              return OnBoardingComponent(
                backgroundImage: provider.boardingList[index].image,
                title: provider.boardingList[index].title,
                description: provider.boardingList[index].description,
                pageCount: provider.boardingList.length,
                activeDot: provider.currentPage,
                onPressed: () {
                  if (provider.currentPage ==
                      provider.boardingList.length - 1) {
                    navigatorTo(context, const LogIn());
                  } else {
                    provider.pageChangeNext();
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}
