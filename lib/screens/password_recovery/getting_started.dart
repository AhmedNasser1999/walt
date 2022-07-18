import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walt/Providers/provider1.dart';

import '../../components/colors.dart';
import '../../components/components.dart';

class GettingStartedScreen extends StatelessWidget {
  GettingStartedScreen({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Provider3(),
      builder: (ctx, _) {
        var provider = Provider.of<Provider3>(ctx);
        return Scaffold(
          backgroundColor: backColor,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buildCloseButton(),
                    const SizedBox(
                      width: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          " Sign in ",
                          style: TextStyle(fontSize: 14, color: primaryColor),
                        ),
                      ),
                    )
                  ],
                ),
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
                              "Getting Started",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              'Create an account to continue!',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  height: 1.7),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 320,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  defaultText('Full Name'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 45,
                                    child: Center(
                                        child: buildTextForm(
                                          false,
                                            nameController,
                                            'Ugur Ates',
                                            ctx,
                                            provider.changeName,
                                            TextInputType.name,
                                            Icons.account_circle,
                                            false,
                                            provider.name)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  defaultText('Phone Number'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 45,
                                    child: buildTextForm(
                                      true,
                                        phoneController,
                                        '(+84) 123456789',
                                        ctx,
                                        provider.changePhone,
                                        TextInputType.number,
                                        Icons.phone_android,
                                        false,
                                        provider.phone),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  defaultText('Password'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  SizedBox(
                                    height: 45,
                                    child: buildTextForm(
                                      false,
                                        passwordController,
                                        'write password',
                                        ctx,
                                        provider.changePassword,
                                        TextInputType.visiblePassword,
                                        Icons.lock,
                                        true,
                                        provider.password),
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () => provider.onTap(),
                                        child: Container(
                                          height: 22,
                                          width: 22,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2,
                                                color: provider.isCheck
                                                    ? primaryColor
                                                    : Colors.grey),
                                          ),
                                          child: provider.isCheck
                                              ? Center(
                                                  child: Icon(
                                                  Icons.check,
                                                  color: primaryColor,
                                                  size: 16,
                                                ))
                                              : null,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "By creating an account, you aggree to our.",
                                            style: TextStyle(
                                                fontSize: 12, color: textColor),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Term and Conditions",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: primaryColor),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            buildElevatedButton(
                              onPrimary: Colors.white,
                              height: 43.0,
                              width: 280.0,
                              text: "Sign Up ",
                              onPressed: (provider.name.isNotEmpty &&
                                      provider.password.isNotEmpty &&
                                      provider.phone.isNotEmpty)
                                  ? () {
                                      navigatorTo(context, const Scaffold());
                                    }
                                  : null,
                            ),
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
