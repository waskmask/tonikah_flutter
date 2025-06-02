import 'package:flutter/material.dart';
import 'package:to_nikah_app/core/helper/helper.dart';
import 'package:to_nikah_app/presentation/fragments/mobile/profile_fragment.dart';

class HomeMobileScreen extends StatefulWidget {
  const HomeMobileScreen({super.key});

  @override
  State<HomeMobileScreen> createState() => _HomeMobileScreenState();
}

class _HomeMobileScreenState extends State<HomeMobileScreen> {
  int selectedIndex = 0;
  final fragments = [
    Container(),
    Container(),
    Container(),
    ProfileFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fragments[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: true,
        currentIndex: selectedIndex,
        onTap: (index) {
          debugLog('tag', index);
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
