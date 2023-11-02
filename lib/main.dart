import 'package:flutter/material.dart';
import 'package:train_x/authentication/facial_verification.dart';
import 'package:train_x/authentication/sign_in.dart';
import 'authentication/bvn.dart';
import 'authentication/email.dart';
import 'onboarding/signupSignin.dart';
import 'authentication/signup.dart';

void main() {
  runApp(const TrainX());
}

class TrainX extends StatefulWidget {
  const TrainX({Key? key}) : super(key: key);

  @override
  State<TrainX> createState() => _TrainXState();
}

class _TrainXState extends State<TrainX> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignIn.id,
      routes: {
        SignUpSignIn.id: (context) => SignUpSignIn(),
        SignUp.id: (context) => SignUp(),
        Email.id: (context) => Email(),
        Bvn.id: (context) => Bvn(),
        FacialVerification.id: (context) => FacialVerification(),
        SignIn.id: (context) => SignIn(),
      },
    );
  }
}

