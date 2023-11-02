import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
   final String labelText;
   final String hintText;

  customTextField({required this.labelText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, right: 35),
      child: TextField(

        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(fontSize: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey),
          ),
          filled: true,
          hintText: hintText,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}