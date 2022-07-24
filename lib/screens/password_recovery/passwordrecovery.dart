import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/screens/password_recovery/verifyidentity.dart';
import '../../components/components.dart';

class PasswordRecovery extends StatelessWidget {
   PasswordRecovery({Key? key}) : super(key: key);
 final  MaskInputFormatter phoneFormatter=MaskInputFormatter(mask: '### ### ###');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backColor,
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
                  color:backColor,
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
                          "Password Recovery",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Enter your Phone number to recover your password',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 48,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 35,
                          ),
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 16,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black.withOpacity(0.08),
                          ),
                          height: 89,
                          width: 305,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Phone Number',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                              IntlPhoneField(
                                cursorColor: Colors.grey,
                                inputFormatters: [phoneFormatter],
                                showCursor: true,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                                decoration: const InputDecoration(
                                  errorText: '',
                                  errorStyle: TextStyle(fontSize: 0),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.zero),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.zero),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.zero),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.zero),
                                  counterText: '',
                                ),
                                initialCountryCode: 'VN',
                                onChanged: (phone) {},
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        buildElevatedButton(

                            onPrimary: Colors.white,
                            height: 45.0,
                            width: 300.0,
                            text: "SEND CODE",
                            onPressed:()=>navigatorTo(context, VerifyIdentityScreen())),
                        const SizedBox(
                          height: 42,
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
  }
}
