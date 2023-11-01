import 'package:flutter/material.dart';
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
      initialRoute: SignUp.id,
      routes: {
        SignUpSignIn.id: (context) => SignUpSignIn(),
        SignUp.id: (context) => SignUp(),
      },
    );
  }
}

