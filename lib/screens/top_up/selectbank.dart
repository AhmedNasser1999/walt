import 'package:flutter/material.dart';

import '../../components/colors.dart';
import '../../components/components.dart';
class SelectBankScreen extends StatelessWidget {
  const SelectBankScreen({Key? key}) : super(key: key);

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
            Center(child: buildContainerDivider()),
           const SizedBox(height: 30,),
            Text("Cash Out to Associated Bank",style:
              TextStyle(
                fontSize: 15,color: iconColor,
                fontWeight: FontWeight.bold
              ),),
            const  SizedBox(height: 30,),
            myDivider(),
            const SizedBox(height: 30,),
            bankOfAmerica(checkCircle(),),
            const  SizedBox(height: 30,),
            Padding(
                padding:const EdgeInsets.symmetric(
                  horizontal: 25
                ),
                child: myDivider()),
            const  SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 27),
              child: buildElevatedButton(
                  onPrimary:iconColor,
                  height: 45.0,
                  width: 310.0,
                  text: 'Add Bank',
                  onPressed:false?(){}:null,
            ),),
           const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 27),
              child: buildElevatedButton(
                onPrimary:Colors.white,
                height: 45.0,
                width: 310.0,
                text: 'NEXT',
                onPressed:(){

                },
              ),),



          ],
        ),
      ),
    );
  }


}
