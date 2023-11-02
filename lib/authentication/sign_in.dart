import 'package:flutter/material.dart';
import 'package:train_x/presentation/screens/home/main_home.dart';
import 'package:train_x/utilities/custom_text_field.dart';
import 'package:train_x/utilities/custom_button.dart';

class SignIn extends StatefulWidget {
  static const String id = 'signin';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            customTextField(labelText: 'Email', hintText: 'example@gmail.com'),
            SizedBox(height: 10,),
            customTextField(labelText: 'Password', hintText: '*******'),
            SizedBox(height: 48,),
            customButton(text: 'Next', onPressed: () {  Navigator.pushNamed(context, MainHome.id);},),
            SizedBox(height: 32,),
            Row(
              children: [
                SizedBox(width: 38,),
                Text("Don’t have an account?", style: TextStyle(color: Colors.grey),),
                Text("Sign up", style: TextStyle(color: Color(0xFF0F3CD9)),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
