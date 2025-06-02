import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/login_mobile_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = '/login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: LoginMobileScreen(),
      desktop: SizedBox(),
      tablet: LoginMobileScreen(),
    );
  }
}
