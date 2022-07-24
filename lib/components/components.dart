import 'package:flutter/material.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';
import 'package:pinput/pinput.dart';
import 'package:walt/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtbItem extends StatelessWidget {
  const OtbItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            return 'You must Enter number';
          }
          return null;
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        style: const TextStyle(fontSize: 20.0),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}


Padding buildCloseButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 60, left: 35),
    child: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.close),
    ),
  );
}

buildPinCode(provider,defaultPinTheme){
  return Column(
    children: [
      Pinput(
        length: 4,
        validator: (s) {
          provider.changeIsPain(s);
          if (provider.isPain) {
            return null;
          } else {
            return 'Pin is incorrect';
          }
        },
        showCursor: true,
        defaultPinTheme: defaultPinTheme,
        onCompleted: (pin) => print(pin),
        pinputAutovalidateMode:
        PinputAutovalidateMode.onSubmit,
      ),
      const SizedBox(
        height: 24,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I didn't receive code.",
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600),
          ),
          Text(
              "Resend Code",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ))
        ],
      ),
    ],
  );
}
ElevatedButton buildElevatedButton(
    {required onPrimary,
    required height,
    required width,
    required text,
      primary,
      textColor,
    required onPressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: primary??primaryColor,
          onPrimary: onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),),
      onPressed: onPressed,
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16,color: textColor??white),
          ),
        ),
      ));
}

navigatorTo(context, screen) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen));
}

MaskInputFormatter phoneFormatter =
    MaskInputFormatter(mask: '(+##) ### ### ###');
Text defaultText(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 14,
      color: textColor,
      fontWeight: FontWeight.normal,
    ),
  );
}

TextFormField buildTextFormFieldPassword(controller, ctx, onChange) {
  return TextFormField(
    onChanged: (val) {
      onChange(val);
    },
    obscureText: true,
    controller: controller,
    cursorColor: Colors.grey,
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.lock,
        color: iconColor,
      ),
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
  );
}

TextFormField buildTextForm(formatter, TextEditingController controller,
    hintText, ctx, onChange, keyboardType, preicon, obs, String text) {
  return TextFormField(
    onChanged: (val) {
      onChange(val);
    },
    inputFormatters: formatter
        ? [
            phoneFormatter,
          ]
        : null,
    obscureText: obs,
    controller: controller,
    cursorColor: Colors.grey,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 13, color: textColor),
      prefixIcon: Icon(
        preicon,
        color: text.isNotEmpty ? iconColor : Colors.grey,
      ),
      filled: true,
      suffix: text.isNotEmpty
          ? Container(
              margin: const EdgeInsets.only(top: 25),
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: primaryColor, width: 1.5)),
              child: Icon(
                Icons.check,
                color: primaryColor,
                size: 16,
              ),
            )
          : null,
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
  );
}

Widget dotIndicator({required int dotCount, required int activeDot}) {
  List<Widget> dotList = List.generate(
    dotCount,
    (index) => dot(activeDot == index),
  );

  return SizedBox(
    height: 5,
    width: dotCount * 16.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: dotList,
    ),
  );
}

Widget dot(bool active) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2.5),
      color: white,
    ),
    height: 5,
    width: active ? 16 : 8,
  );
}

Container checkCircle() {
  return Container(
    margin: const EdgeInsets.only(top: 25),
    height: 20,
    width: 20,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: primaryColor, width: 2)),
    child: Icon(
      Icons.check,
      color: primaryColor,
      size: 16,
    ),
  );
}

Padding bankOfAmerica(widget) {
  return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/ambank.png',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank of America ",
                style: TextStyle(
                    fontSize: 15,
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
          InkWell(onTap: () {}, child: widget)
        ],
      ));
}

Row rowBandOfAmerica() {
  return Row(
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
                fontSize: 14, color: iconColor, fontWeight: FontWeight.bold),
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
  );
}

Container buildDivider(
    height,width,color,radius
    ) {
  return Container(
    height:height,
    width: width,
    decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius)),
  );
}

