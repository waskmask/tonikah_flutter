import 'package:flutter/material.dart';

import 'custom_button_widget.dart';
import 'custom_text_widget.dart';

class LocationActionWidget extends StatelessWidget {
  const LocationActionWidget({
    super.key,
    required this.text,
    required this.subText,
    required this.onClick,
    required this.btnText,
  });

  final String text;
  final String subText;
  final VoidCallback onClick;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextWidget(
              text: text,
              textColor: Colors.red,
              fontSize: 13.0,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w700,
            ),
            CustomTextWidget(
              text: subText,
              textColor: Colors.red,
              fontSize: 12.0,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 10.0),
            CustomTextButton(
              onClick: onClick,
              btnName: btnText,
              height: 40.0,
            )
          ],
        ),
      ),
    );
  }
}
