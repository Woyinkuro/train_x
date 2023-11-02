import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/colors.dart';
import 'bottom_nav/account.dart';
import 'bottom_nav/book_trip.dart';
import 'bottom_nav/home_bottom.dart';
import 'bottom_nav/wallet.dart';

class MainHome extends StatefulWidget {
  static const String id = 'main_home';
  MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  int _selectindex = 0;

  List navPage = [
    Wallet(),
    HomeBottom(),
    BookTrip(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavigationList[_selectindex]['Navigation'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle:
        const TextStyle(fontWeight: FontWeight.w500, color: AppColors.secondary),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectindex,

        onTap: (value) => setState(() {
          _selectindex = value;
        }),
        items: bottomNavigationList
            .map(
                (item) {
              return BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    item['icon'],
                    colorFilter:
                    const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  activeIcon: SvgPicture.asset(item['icon'],
                      colorFilter:
                      const ColorFilter.mode(AppColors.secondary, BlendMode.srcIn)),
                  label: item['Name']);
            }
        )
            .toList(),
      ),
    );
  }
}

const List<Map<String, dynamic>> bottomNavigationList = [
  {
    'Name': 'Home',
    'icon': 'assets/icons/home.svg',
    'Navigation' : HomeBottom(),
  },
  {
    'Name': 'BookTrip',
    'icon': 'assets/icons/book_trip.svg',
    'Navigation' : BookTrip(),
  },
  {
    'Name': 'Wallet',
    'icon': 'assets/icons/wallet.svg',
    'Navigation' : Wallet(),
  },
  {
    'Name': 'Account',
    'icon': 'assets/icons/account.svg',
    'Navigation' : Account(),
  },
];