import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walt/Providers/auth_provider.dart';
import 'package:walt/components/colors.dart';
import 'package:walt/components/components.dart';
import 'package:walt/components/image_path.dart';
import 'package:walt/screens/card/choice_card.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context, child) {
        var provider = Provider.of<AuthProvider>(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot your credentials?',
                      style: TextStyle(
                        color: textButtonColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: SafeArea(
            child: SizedBox(
              height: 650,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    height: 610,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(
                          30,
                        ),
                        topRight: Radius.circular(
                          30,
                        ),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 96,
                          ),
                          const Text(
                            "Let’s Sign You In",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Welcome back, you’ve been missed!',
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
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            width: double.infinity,
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                defaultText("Phone Number"),
                                const SizedBox(
                                  height: 17,
                                ),
                                SizedBox(
                                  height: 45,
                                  child: TextFormField(
                                    onChanged: (value){
                                      provider.phoneCompleted(value);
                                    },
                                    controller: provider.phoneController,
                                    keyboardType: TextInputType.phone,
                                    cursorColor: Colors.grey,
                                    decoration: InputDecoration(

                                      hintText: phoneFormatter.mask,
                                      prefixIcon: Icon(Icons.phone_iphone_outlined,color: iconColor,),
                                      suffixIcon: provider.phoneAdd? Icon(Icons.verified_outlined,color: primaryColor,):null,
                                      filled: true,
                                      fillColor: Colors.black.withOpacity(0.05),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            color: Colors.black.withOpacity(0.05),
                                          )),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            color: Colors.black.withOpacity(0.05),
                                          )),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            color: Colors.black.withOpacity(0.05),
                                          )),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                            width: 0,
                                            color: Colors.black.withOpacity(0.05),
                                          )),
                                    ),
                                    inputFormatters: [
                                      phoneFormatter,
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                defaultText("Password"),
                                const SizedBox(
                                  height: 17,
                                ),
                                SizedBox(
                                  height: 44,
                                  child: buildTextFormFieldPassword(
                                    provider.passwordController,
                                    context,
                                    (val) {
                                      provider.changePassword(val);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40,),
                          buildElevatedButton(
                          onPrimary: Colors.white,
                          height: 47.0,
                          width: 280.0,
                          primary: provider.buttonIsActive? null:disablePrimaryColor,
                          text: "SIGN IN ",
                          onPressed: (){
                            if(provider.buttonIsActive)
                              {

                              }
                          },
                        ),
                          const SizedBox(height: 20,),
                          buildElevatedButton(
                          onPrimary: Colors.white,
                          height: 47.0,
                          width: 280.0,
                          text: "Create an account",
                          textColor: Colors.black,
                          primary: accentButtonColor,
                          onPressed: (){
navigatorTo(context, ChoiceCard());
                          },
                        ),
                          const SizedBox(
                            height: 38,
                          )
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    child: Image(
                      image: AssetImage(
                        ImagePath.user,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      create: (BuildContext context) => AuthProvider(),
    );
  }
}
