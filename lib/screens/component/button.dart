import 'package:flutter/material.dart';

class DefultButton extends StatelessWidget {
  Function()? onPressed;
  String? buttonText;
  DefultButton({
    @required this.onPressed,
    @required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.amber,
        ),
        child: MaterialButton(
          textColor: Colors.white,
          onPressed: onPressed,
          child: Text(buttonText!),
        ),
      ),
    );
  }
}
