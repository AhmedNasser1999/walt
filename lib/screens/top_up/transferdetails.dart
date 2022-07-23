import 'package:flutter/material.dart';
import 'package:walt/screens/top_up/transfer_popup.dart';

import '../../components/colors.dart';
import '../../components/components.dart';

class TransferDetailsScreen extends StatelessWidget {
  const TransferDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 65),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(child: buildDivider(4.0, 40.0, Colors.grey[200], 10.0)),
            const SizedBox(
              height: 30,
            ),
            bankOfAmerica(
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 26,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            buildDivider(1.0, double.infinity, Colors.grey[200], 0.0),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Text(
                  "Transaction Details",
                  style: TextStyle(
                      fontSize: 15,
                      color: iconColor,
                      fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 27, right: 27),
              height: 240,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  buildPaddingRow('To', 'Orhan Ozdemir'),
                  buildDivider(1.0, 305.0, Colors.grey[300], 0.0),
                  buildPaddingRow('Credit Card', 'Visa 8888'),
                  buildDivider(1.0, 305.0, Colors.grey[300], 0.0),
                  buildPaddingRow('Transaction fee', 'Free'),
                  buildDivider(1.0, 305.0, Colors.grey[300], 0.0),
                  buildPaddingRow('Total amount', '\$ 1,240.00')
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 27),
              child: buildElevatedButton(
                  onPrimary: Colors.white,
                  height: 45.0,
                  width: 310.0,
                  text: 'PRESS & HOLD TO TRANSFER',
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const TransferPopUp());
                  }),
            )
          ],
        ),
      ),
    );
  }

  Padding buildPaddingRow(text1, text2) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text1,
            style: const TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            text2,
            style: TextStyle(
                fontSize: 15, color: iconColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
