import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:walt/screens/top_up/selectbank.dart';
import '../../components/colors.dart';
import '../../components/components.dart';

class WithdrawScreen extends StatelessWidget {
  WithdrawScreen({Key? key}) : super(key: key);
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
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            buildDivider(4.0, 40.0, Colors.grey[200], 10.0),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "USD",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 5,
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
            const SizedBox(
              height: 50,
            ),
            buildDivider(1.0, double.infinity, Colors.grey[200], 10.0),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 305.0,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      HexColor('#0E4DFB'),
                      HexColor('#27E3FE'),
                    ],
                    end: Alignment.centerRight,
                    begin: Alignment.centerLeft,
                  )),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white.withOpacity(0.3)),
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: const Center(
                        child: Text(
                      "\$ 16,003.00",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "CaPay Balance",
                    style: TextStyle(
                        fontSize: 17, color: Colors.white.withOpacity(0.5)),
                  )
                ],
              ),
            ),
            const Spacer(),
            buildElevatedButton(
                onPrimary: Colors.white,
                height: 40.0,
                width: 280.0,
                text: "NEXT",
                onPressed: () {
                  navigatorTo(context, const SelectBankScreen());
                }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
