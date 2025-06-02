import 'package:flutter/material.dart';
import 'package:to_nikah_app/presentation/screens/base_screen.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register_mobile_screen.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = '/register';

  const RegisterScreen({super.key, required this.type});

  final String type;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      mobile: RegisterMobileScreen(type: widget.type),
      desktop: SizedBox(),
      tablet:RegisterMobileScreen(type: widget.type),
    );
  }
}
