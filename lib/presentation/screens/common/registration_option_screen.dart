import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/registration_option_mobile_screen.dart';

class RegistrationOptionScreen extends StatefulWidget {
  static const String id = '/register-option';

  const RegistrationOptionScreen({super.key});

  @override
  State<RegistrationOptionScreen> createState() =>
      _RegistrationOptionScreenState();
}

class _RegistrationOptionScreenState extends State<RegistrationOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: RegistrationOptionMobileScreen(),
      desktop: SizedBox(),
      tablet:  RegistrationOptionMobileScreen(),
    );
  }
}
