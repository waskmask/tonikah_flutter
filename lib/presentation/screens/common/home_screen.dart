import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/home_mobile_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: HomeMobileScreen(),
      desktop: SizedBox(),
      tablet: HomeMobileScreen(),
    );
  }
}
