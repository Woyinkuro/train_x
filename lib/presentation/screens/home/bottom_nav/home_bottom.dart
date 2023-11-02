import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:train_x/presentation/constant/colors.dart';
import 'package:train_x/presentation/screens/home/bottom_nav/home/instant_trip.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Merlin'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Let\'s start your trip today!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset('assets/icons/notification.svg')
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.secondary,
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Current Balance',style: TextStyle(fontSize: 18,color: AppColors.grey),),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.visibility_sharp,size: 16  ),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/naira.svg',
                            height: 14,
                            width: 14,
                          ),
                          Text('100.00',
                              style: TextStyle(
                                color: AppColors.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text('Access Bank',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '3000244824',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset('assets/icons/copy.svg'),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        minWidth: 130,
                        height: 40,
                        textColor: Colors.white,
                        color: AppColors.secondary,
                        child: Text(
                          'Deposit',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, InstantTrip.id);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/instant.svg'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Instant Trip'),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.chevron_right)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text('Recent Activities',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: double.infinity,),
                    Image.asset('images/nothing.png'),
                    Text('Nothing to show')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
