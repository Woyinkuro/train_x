import 'package:flutter/material.dart';
import 'package:train_x/authentication/email.dart';
import 'package:train_x/authentication/sign_in.dart';
import 'package:train_x/authentication/signup.dart';
import 'package:train_x/presentation/screens/home/main_home.dart';

import '../utilities/custom_button.dart';

class SignUpSignIn extends StatelessWidget {
  static const String id = 'sign_up_sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("images/train.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.5 - 34,
            left: MediaQuery.of(context).size.height * 0.04,
            child: Column(
              children: [
                Text(
                  "Aboard with Ease",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Get ready to streamline your rail journey with\n real-time updates, ticket booking, and more at\nyour fingertips.Let's make your train travel\nsmoother and more enjoyable.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 130,
                ),
                //create acct button start1
                customButton(text: "Create Account", onPressed: () {
                  Navigator.pushNamed(context, SignUp.id);
                },),
                //create acct button end1
                SizedBox(height: 32,),
                //create acct button start2
                SizedBox(
                  width: 343,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignIn.id);
                    },
                    child: Text("Login", style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      side: BorderSide(width: 2, color: Color(0xFF0F3CD9)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                //create acct button end2

              ],
            ),
          ),
        ],
      ),
    );
  }
}


