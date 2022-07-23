import 'package:flutter/material.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/components/components.dart';
import 'package:walt/screens/top_up/confirm_toUP.dart';

class TopUpScreen extends StatelessWidget {
  TopUpScreen({Key? key}) : super(key: key);
  final TextEditingController numberController = TextEditingController();

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
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            buildDivider(
                3.0,
                35.0,
                Colors.grey[300],
                4.0),
            const SizedBox(
              height: 160,
            ),
            const Text(
              "USD",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              cursorWidth: 0,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              controller: numberController,
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  hintText: '16,002.00',
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
            ),
            const Spacer(),
            buildElevatedButton(
                onPrimary: Colors.white,
                height: 40.0,
                width: 280.0,
                text: "NEXT",
                onPressed: () {
                  navigatorTo(context, const ConfirmToUpScreen());
                }),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
