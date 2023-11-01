import 'package:flutter/material.dart';

import '../utilities/custom_text_field.dart';
import 'package:train_x/utilities/custom_button.dart';

class SignUp extends StatefulWidget {
  static const String id = 'sign_up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              customTextField(labelText: "First Name", hintText: "Enter your first name",),
              SizedBox(height: 28,),
              customTextField(labelText: "Last Name", hintText: "Enter your last name"),
              SizedBox(height: 28,),
              customTextField(labelText: "Phone Number", hintText: "Enter your phone number"),
              SizedBox(height: 28,),
              customTextField(labelText: "Email", hintText: "example@gmail.com"),
              SizedBox(height: 28,),
              customTextField(labelText: "password", hintText: "Must be a minimum of 8 characters"),
              SizedBox(height: 58,),
              customButton(text: "Next",)
            ],
          ),
        ),
      ),
    );
  }
}


