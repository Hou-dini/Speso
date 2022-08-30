import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:speso/screens/screens.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static List<Widget> screens = <Widget>[
    const ChatScreen(),
    const ChatScreen(),
    const ServiceScreen(),
    const ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final chatIconSVG = SvgPicture.asset('assets/icons/chat.svg',
    height: 24,
    width: 24,
    color: colorScheme.onPrimary,
    semanticsLabel: 'go to chat screen');

    final barcodeIconSVG = SvgPicture.asset(
      'assets/icons/barcode.svg',
      height: 24,
      width: 24,
      color: colorScheme.onPrimary.withOpacity(.9),
      semanticsLabel: 'go to scan screen',
    );

    final servicesIconSVG = SvgPicture.asset(
      'assets/icons/services.svg',
      height: 24,
      width: 24,
      color: colorScheme.onPrimary,
      semanticsLabel: 'go to services screen',
    );

    final userIconSVG = SvgPicture.asset(
      'assets/icons/user.svg',
      height: 24,
      width: 24,
      color: colorScheme.onPrimary.withOpacity(0.8),
      semanticsLabel: 'go to account screen',
    );

    BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: chatIconSVG,
        label: 'Chat'),
        BottomNavigationBarItem(
            icon: barcodeIconSVG,
        label: 'Scan'),
        BottomNavigationBarItem(
            icon: servicesIconSVG,
        label: 'Services'),
        BottomNavigationBarItem(
            icon: userIconSVG,
        label: 'Account'),
      ],
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: bottomNavBar,
      body: screens[_currentIndex],
    );
  }
}
