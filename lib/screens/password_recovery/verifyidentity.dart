import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';
import 'package:walt/Providers/providers.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/screens/password_recovery/resetpassword.dart';

import '../../components/components.dart';

class VerifyIdentityScreen extends StatelessWidget {
  VerifyIdentityScreen({Key? key}) : super(key: key);
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
      create: (ctx) => Provider1(),
      builder: (context, _) {
        var provider = Provider.of<Provider1>(context);
        return Scaffold(
          backgroundColor: backColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCloseButton(),
                const SizedBox(
                  height: 35,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      color: backColor,
                      padding: const EdgeInsets.only(top: 38),
                      height: 656,
                      child: Container(
                        height: 656,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 96,
                            ),
                            const Text(
                              "Verify your identity",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'We have just sent a code to (+84) 999 999 999',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              height: 72,
                            ),
                           buildPinCode(provider, defaultPinTheme),
                            const SizedBox(
                              height: 150,
                            ),
                            buildElevatedButton(

                                onPrimary: Colors.white,
                                height: 47.0,
                                width: 280.0,
                                text: "NEXT",
                                onPressed: provider.isPain ? () {
                                  navigatorTo(context, ResetPassword());
                                } : null),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 130, bottom: 8),
                              child: Text(
                                "By Signing up, you agree to our. ",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w300),
                              ),
                            ),
                            Text(
                              'Term and Conditions',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/Thumb.png',
                      height: 80,
                      width: 80,
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
