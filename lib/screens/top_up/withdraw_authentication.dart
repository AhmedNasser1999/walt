import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:walt/Providers/otpwithdraw_provider.dart';
import '../../components/colors.dart';
import '../../components/components.dart';

class WithdrawAuthenticationScreen extends StatelessWidget {
  WithdrawAuthenticationScreen({Key? key}) : super(key: key);

  final defaultPinTheme = PinTheme(
    width: 65,
    height: 65,
    textStyle: const TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.06),
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => OTPProvider(),
      builder: (context, _) {
        var provider = Provider.of<OTPProvider>(context);
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
                buildDivider(10, 100, Colors.red, 10),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  "OTP Authentication",
                  style: TextStyle(
                      fontSize: 16,
                      color: iconColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 35,
                ),
                buildDivider(10, 100, Colors.red, 10),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'An authentication code has been sent to',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "(+84) 999 999 999 ",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(
                  height: 70,
                ),
                buildPinCode(provider, defaultPinTheme),
                const Spacer(),
                buildElevatedButton(
                    onPrimary: Colors.white,
                    height: 45.0,
                    width: 280.0,
                    text: "WITHDRAW",
                    onPressed: provider.isPain
                        ? () {
                            navigatorTo(context, null);
                          }
                        : null),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
