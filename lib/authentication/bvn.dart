import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
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
            Row(
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
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 36,
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            //pinput
           customTextField(labelText: "Bvn", hintText: "Enter your BVN for verification",),
            SizedBox(height: 64,),
            customButton(text: "Next"),
            SizedBox(height: 32,),

          ],
        ),
      ),
    );
  }
}
