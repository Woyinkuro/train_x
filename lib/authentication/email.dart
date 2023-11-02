import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:train_x/utilities/custom_button.dart';

class Email extends StatefulWidget {
  static const String id = 'email';

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
                  "Email Verification",
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
                Text(
                  "Enter the verification code sent to your email",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            //pinput
            Pinput(
              length: 5,
              showCursor: true,
              defaultPinTheme: PinTheme(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height *
                    0.07, // 10% of screen height

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                ),
              ),
            ),
            SizedBox(height: 64,),
            customButton(text: "Verify"),
            SizedBox(height: 32,),
            Row(
              children: [
                SizedBox(width: 38,),
                Text("Didn’t Receive Code? "),
                Text(
                  "Resend",
                  style: TextStyle(
                    color: Color(0xFF0F3CD9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
