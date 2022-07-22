import 'package:flutter/material.dart';
import 'package:walt/screens/top_up/withdraw.dart';

import '../../components/colors.dart';
import '../../components/components.dart';

class TransferPopUp extends StatelessWidget {
  const TransferPopUp({Key? key}) : super(key: key);

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
                height: 550,
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Transfer money was Successful ",
                      style: TextStyle(
                          fontSize: 16,
                          color: iconColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "You Earned 50 points 🤘",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      width: double.infinity,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.06),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Text(
                            "\$ 1,240.00",
                            style: TextStyle(
                                fontSize: 26,
                                color: primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "Request Amount",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Column(
                      children: [
                        buildRowItems(
                            'From', 'CaPay', 'Stella Cobb', '****9999'),
                        const SizedBox(
                          height: 25,
                        ),
                       buildDivider(2, 100,Colors.red, 10),
                        const SizedBox(
                          height: 20,
                        ),
                        buildRowItems(
                            'To', 'Credit Card', 'Orhan Ozdemir', 'Visa 8888'),
                        const SizedBox(
                          height: 25,
                        ),
                        buildDivider(10, 10, Colors.red, 10),
                        const SizedBox(
                          height: 20,
                        ),
                        buildRowItems('Date', '', '24 jul 2020', '15:30'),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    InkWell(
                      onTap: () {
                        navigatorTo(context, WithdrawScreen());
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
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/images/doublecrdit.png',
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildRowItems(titel1, sub1, titel2, sub2) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titel1, style: textStyle1()),
            const SizedBox(
              height: 3,
            ),
            Text(
              sub1,
              style: textStyle2(),
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              titel2,
              style: textStyle1(),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              sub2,
              style: textStyle2(),
            )
          ],
        ),
      ],
    );
  }

  TextStyle textStyle1() {
    return TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: iconColor);
  }

  TextStyle textStyle2() {
    return const TextStyle(fontSize: 14, color: Colors.grey);
  }
}
