import 'package:flutter/material.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';
import 'package:walt/components/colors.dart';

Padding buildCloseButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 60, left: 35),
    child: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.close),
    ),
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

Container divider1() {
  return Container(
    height: 1,
    width: double.infinity,
    color: Colors.grey[300],
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

ElevatedButton buildElevatedButton(
    {required onPrimary,
    required height,
    required width,
    required text,
    required onPressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: primaryColor,
          onPrimary: onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      onPressed: onPressed,
      child: SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
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
        fontSize: 14, color: textColor, fontWeight: FontWeight.normal),
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
      suffix: text.isNotEmpty ? checkCircle() : null,
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

Container buildContainerDivider() {
  return Container(
    height: 3,
    width: 30,
    decoration: BoxDecoration(
        color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
  );
}

Container myDivider() {
  return Container(
    height: 0.7,
    width: double.infinity,
    color: Colors.grey[200],
  );
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
