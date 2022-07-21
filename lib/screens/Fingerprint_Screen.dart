import 'package:flutter/material.dart';
import 'package:walt/screens/OTP_Screen.dart';
import 'package:walt/screens/component/button.dart';

class FingerprintScreen extends StatelessWidget {
  const FingerprintScreen({Key? key}) : super(key: key);

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
                    child: Center(
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            const SizedBox(height: 96.0),
                            const Text(
                              'fingerprint',
                              style: TextStyle(fontSize: 24.0),
                            ),
                            const SizedBox(height: 12.0),
                            const Text(
                              'Please lift and rest your finger',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 48.0),
                            Icon(
                              Icons.fingerprint,
                              size: 120,
                              color: Colors.grey[300],
                            ),
                            const SizedBox(height: 100.0),
                            DefultButton(
                              onPressed: () {},
                              buttonText: 'Next',
                            ),
                            const SizedBox(height: 16.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 36.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                    'By Signing Up, you agree to our',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5.0),
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
              ],
            ),
            buildUserImage(),
          ],
        ),
      ),
    );
  }
}
