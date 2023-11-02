import 'package:flutter/material.dart';
import 'package:train_x/authentication/signup.dart';

class customButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  customButton({required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 56,
      child: ElevatedButton(
        onPressed:onPressed,
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF0F3CD9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}