import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen(
      {super.key,
      required this.mobile,
      required this.desktop,
      required this.tablet});

  final Widget mobile;
  final Widget desktop;
  final Widget tablet;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (size.width >= 1000) {
      return desktop;
    } else if (size.width >= 850) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
