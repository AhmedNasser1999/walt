import 'package:flutter/material.dart';

import 'component/button.dart';
import 'component/otbItem.dart';

class OtpScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();

  OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5F4FC),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 112.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      )
                    ]),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Form(
                      key: formKey,
                      child: Expanded(
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(height: 100.0),
                              const Text('OTP Authentication',
                                  style: TextStyle(fontSize: 22.0)),
                              const SizedBox(height: 12.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 36.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      'An authentication code has been send to',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              const Text(
                                '(+48) 999 999 999',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 48.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  OtbItem(),
                                  SizedBox(width: 15.0),
                                  OtbItem(),
                                  SizedBox(width: 15.0),
                                  OtbItem(),
                                  SizedBox(width: 15.0),
                                  OtbItem(),
                                ],
                              ),
                              const SizedBox(height: 24.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('i didin\'t receive code.'),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text('Resend Code'),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 90.0),
                              DefultButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {}
                                },
                                buttonText: 'Next',
                              ),
                              const SizedBox(height: 16.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 36.0),
                                child: Row(
                                  children: const [
                                    Text(
                                      'By Signing up, you agree to our',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text('Term and Conditions'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            buildUserImage(),
          ],
        ),
      ),
    );
  }
}

Widget buildUserImage() {
  return Padding(
    padding: const EdgeInsets.only(top: 68.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/Thumb.png'),
      ],
    ),
  );
}
