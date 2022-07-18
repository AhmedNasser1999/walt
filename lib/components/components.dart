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


ElevatedButton buildElevatedButton(
    {
    required onPrimary,
    required height,
    required width,
    required text,
    required onPressed}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
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

navigatorTo(context,screen){
  return Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
}
MaskInputFormatter phoneFormatter=MaskInputFormatter(mask: '(+##) ### ### ###');
Text defaultText(text) {
  return Text(text,style: TextStyle(
      fontSize: 14,color:textColor,fontWeight: FontWeight.normal
  ),);
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
TextFormField buildTextForm(formatter,TextEditingController controller, hintText,ctx, onChange,keyboardType,preicon,obs,String text) {
  return TextFormField(
    onChanged: (val) {
      onChange(val);
    },
    inputFormatters: formatter?[phoneFormatter,]:null,
    obscureText: obs,
    controller: controller,
    cursorColor: Colors.grey,
    keyboardType:keyboardType ,

    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(fontSize:13,color:textColor),
      prefixIcon: Icon(
        preicon,
        color:text.isNotEmpty?iconColor:Colors.grey ,
      ),
      filled: true,
      suffix:text.isNotEmpty? Container(
        margin: const EdgeInsets.only(
          top: 25
        ),
        height: 20,width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: primaryColor,
            width: 1.5
          )
        ),
        child: Icon(Icons.check,color: primaryColor,size: 16,),
      ):null,
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
