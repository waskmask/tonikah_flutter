import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/otp_mobile_screen.dart';

class OtpScreen extends StatelessWidget {
  static const String id = '/verify-otp';

  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: OtpMobileScreen(),
      desktop: SizedBox(),
      tablet: OtpMobileScreen(),
    );
  }
}
