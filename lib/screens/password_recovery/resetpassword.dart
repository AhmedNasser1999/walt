import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/screens/password_recovery/getting_started.dart';
import '../../Providers/providers.dart';
import '../../components/components.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Provider2(),
      builder: (ctx, _) {
        var provider = Provider.of<Provider2>(ctx);
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
                              "Reset your password",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w300),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'At least 8 characters, with uppercase and lowercase\n letters',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  height: 1.7),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 48,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              width: double.infinity,
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  defaultText("New Password"),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  SizedBox(
                                    height: 44,
                                    child: buildTextFormFieldPassword(
                                        newPasswordController,
                                        ctx,
                                        provider.onChangeNew),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  defaultText("Confirm Password"),
                                  const SizedBox(
                                    height: 17,
                                  ),
                                  SizedBox(
                                    height: 44,
                                    child: buildTextFormFieldPassword(
                                        confirmPasswordController,
                                        ctx,
                                        provider.onChangeConf),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            buildElevatedButton(

                              onPrimary: Colors.white,
                              height: 47.0,
                              width: 280.0,
                              text: "SIGN IN ",
                              onPressed: ((provider.newPassword ==
                                          provider.confirmPassword) &&
                                      (provider.newPassword.isNotEmpty))
                                  ? () {
                                navigatorTo(context, GettingStartedScreen());
                              }
                                  : null,
                            ),
                            const SizedBox(
                              height: 38,
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
