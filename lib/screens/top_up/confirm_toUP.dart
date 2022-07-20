import 'package:flutter/material.dart';
import 'package:walt/components/components.dart';
import 'package:walt/screens/top_up/popup.dart';

import '../../components/colors.dart';

class ConfirmToUpScreen extends StatelessWidget {
  const ConfirmToUpScreen({Key? key}) : super(key: key);

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
            buildContainerDivider(),
            const SizedBox(
              height: 110,
            ),
            const Text(
              "USD",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "16,003.00",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 66,
            ),
            Container(
              height: 480,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.08),
                borderRadius: BorderRadius.circular(35),
              ),
              padding: const EdgeInsets.only(
                  left: 17, right: 17, top: 20, bottom: 20),
              child: Column(
                children: [
                  buildContainerDivider(),
                  const SizedBox(
                    height: 23,
                  ),
                  Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Money Source",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: iconColor),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        myDivider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/ambank.png',
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bank of America ",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: iconColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "**** 9999 ",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            const Spacer(),
                            InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 16,
                                  color: Colors.grey,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Information",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: iconColor),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          myDivider(),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Amount of Money ",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              const Spacer(),
                              Text(
                                "\$ 16,003.00",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: iconColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          myDivider(),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "fee",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              const Spacer(),
                              Text(
                                "Free",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  buildElevatedButton(
                      onPrimary: Colors.white,
                      height: 40.0,
                      width: 280.0,
                      text: "CASH IN",
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const PopUp());
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
