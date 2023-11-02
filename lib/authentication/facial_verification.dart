import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:train_x/utilities/custom_button.dart';
import 'package:train_x/utilities/custom_text_field.dart';

class FacialVerification extends StatefulWidget {
  static const String id = 'facial_verification';

  @override
  State<FacialVerification> createState() => _FacialVerificationState();
}

class _FacialVerificationState extends State<FacialVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 27,
                ),
                Text(
                  "Facial Verification",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                SizedBox(
                  width: 27,
                ),
                Text(
                  "Find a well lit area, so your photo can clear for\nverification",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            //Dotted borders
            DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(10),
              color: Color(0xFFABA7A7),
              child: Container(
                height: 470,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10)
                ),

              ),
            ),
            SizedBox(
              height: 64,
            ),
            customButton(text: "Take Photo"),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
