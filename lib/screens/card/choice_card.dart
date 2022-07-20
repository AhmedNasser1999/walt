import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walt/Providers/card_provider.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/components/components.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder:  (context,child){
        var provider = Provider.of<CardProvider>(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 16,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          color: iconColor.withOpacity(.8),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Link Card',
                            style: TextStyle(
                              color: iconColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'skip',
                          style: TextStyle(
                            color: textButtonColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Bank Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 210,
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisExtent: 100,

                              ),
                              itemCount: provider.choicesBank.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Image(image: AssetImage(provider.choicesBank[index].image),),
                                    const SizedBox(height: 10,),
                                    defaultText(provider.choicesBank[index].title),
                                  ],
                                );
                              },
                            ),
                          ),
                          buildElevatedButton(
                            onPrimary: white,
                            height: 47.0,
                            width: double.infinity,
                            text: 'See all',
                            onPressed: () {},
                            primary: accentButtonColor,
                            textColor: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 215,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Text(
                            'Bank Account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 105,
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisExtent: 100,

                              ),
                              itemCount: provider.choicesInternational.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    Image(image: AssetImage(provider.choicesInternational[index].image),),
                                    const SizedBox(height: 10,),
                                    defaultText(provider.choicesInternational[index].title),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }, create: (BuildContext context) => CardProvider(),
    );
  }
}
