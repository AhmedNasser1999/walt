import 'package:flutter/material.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/components/components.dart';
import 'package:walt/screens/top_up/top_up.dart';

class PopUp extends StatelessWidget {
  const PopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0),
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                height: 230,
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 45,
                    ),
                    Text(
                      "Successful deposit into wallet",
                      style: TextStyle(
                          fontSize: 16,
                          color: iconColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Now you can comfortably shop, eat and drink.\n Enjoy it 🤘",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        navigatorTo(context, TopUpScreen());
                      },
                      child: Text(
                        "GO BACK TO HOME",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(
                Icons.credit_card,
                color: Colors.white,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
