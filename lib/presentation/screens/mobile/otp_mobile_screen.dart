import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/core/component/custom_button_widget.dart';
import 'package:to_nikah_app/core/component/custom_text_field_widget.dart';
import 'package:to_nikah_app/presentation/screens/common/basic_profile_screen.dart';

import '../../../core/component/custom_text_widget.dart';

class OtpMobileScreen extends StatefulWidget {
  const OtpMobileScreen({super.key});

  @override
  State<OtpMobileScreen> createState() => _OtpMobileScreenState();
}

class _OtpMobileScreenState extends State<OtpMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).primaryColorLight,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.0),
            Center(
              child: Column(
                children: [
                  CustomTextWidget(
                    text: 'Confirm the code',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: 'waskmask',
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text:
                        'We have send you the confirmation code on your phone number.',
                    textColor: Theme.of(context).hintColor,
                    fontSize: 13.0,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            CustomTextWidget(
              text: 'Enter the code',
              textColor: Theme.of(context).primaryColorLight,
            ),
            SizedBox(height: 15.0),
            CustomOTPTextFieldWidget(
              otpController: TextEditingController(),
              onChange: (value) {},
              maxLength: 6,
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GradientButtonWidget(
                text: 'Confirm',
                isIcon: false,
                onClick: () {
                  context.push(BasicProfileScreen.id);
                },
                width: double.infinity,
                height: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
