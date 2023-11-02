import 'package:flutter/material.dart';
import 'package:train_x/authentication/facial_verification.dart';
import 'package:train_x/utilities/custom_button.dart';
import 'package:train_x/utilities/custom_text_field.dart';

class Bvn extends StatefulWidget {
  static const String id = 'bvn';

  @override
  State<Bvn> createState() => _BvnState();
}

class _BvnState extends State<Bvn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                SizedBox(
                  width: 35,
                ),
                Text(
                  "BVN Verification",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 36,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            //pinput
           customTextField(labelText: "Bvn", hintText: "Enter your BVN for verification",),
            const SizedBox(height: 64,),
            customButton(text: "Next", onPressed: () {Navigator.pushNamed(context, FacialVerification.id);},),
            const SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}
