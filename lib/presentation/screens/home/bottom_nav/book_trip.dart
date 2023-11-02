import 'package:flutter/material.dart';
import 'package:train_x/presentation/component/custom_drop_down.dart';

import '../../../constant/colors.dart';

class BookTrip extends StatefulWidget {
  const BookTrip({super.key});

  @override
  State<BookTrip> createState() => _BookTripState();
}

class _BookTripState extends State<BookTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Book Trip',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Destination',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('From:'),
                  ),
                  Expanded(
                    flex: 7,
                    child: CustomDropDownButton(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text('To:'),
                  ),
                  Expanded(
                    flex: 7,
                    child: CustomDropDownButton(),
                  )
                ],
              ),
            ),
            Text(
              'Date',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Text(
                    'Select a Date:',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.black12,
                    padding: EdgeInsets.all(8),
                    child: Text('02-11-2023',style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {},
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16),
                color: AppColors.secondary,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text(
                  'Purchase Ticket',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
