import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/on_board_mobile_screen.dart';

class OnBoardScreen extends StatefulWidget {

  static const String id = '/';
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: BaseScreen(
        mobile: OnBoardMobileScreen(),
        desktop: SizedBox(),
        tablet: OnBoardMobileScreen(),
      ),
    );
  }
}
