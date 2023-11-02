import 'package:flutter/material.dart';
import 'package:train_x/authentication/facial_verification.dart';
import 'package:train_x/authentication/sign_in.dart';
import 'package:train_x/presentation/screens/home/bottom_nav/home/instant_trip.dart';
import 'package:train_x/presentation/screens/home/main_home.dart';
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
      initialRoute: SignUpSignIn.id,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        SignUpSignIn.id: (context) => SignUpSignIn(),
        MainHome.id: (context) => MainHome(),
        SignUp.id: (context) => SignUp(),
        Email.id: (context) => Email(),
        Bvn.id: (context) => Bvn(),
        InstantTrip.id: (context) => InstantTrip(),
        FacialVerification.id: (context) => FacialVerification(),
        SignIn.id: (context) => SignIn(),
      },
    );
  }
}

