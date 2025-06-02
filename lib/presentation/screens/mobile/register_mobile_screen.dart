import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/core/component/custom_text_field_widget.dart';
import 'package:to_nikah_app/presentation/screens/common/login_screen.dart';
import 'package:to_nikah_app/presentation/screens/common/otp_screen.dart';

import '../../../core/component/custom_button_widget.dart';
import '../../../core/component/custom_text_widget.dart';
import '../../../core/helper/constants.dart';

class RegisterMobileScreen extends StatefulWidget {
  const RegisterMobileScreen({super.key, required this.type});

  final String type;

  @override
  State<RegisterMobileScreen> createState() => _RegisterMobileScreenState();
}

class _RegisterMobileScreenState extends State<RegisterMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).primaryColorLight,
        actions: [
          ButtonContainerWidget(
            text: 'Login',
            onClick: () {
              context.push(LoginScreen.id);
            },
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
            btnColor: Colors.grey.shade200,
            fontSize: 13.0,
            radius: 5.0,
            textColor: kAppColor,
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Center(
              child: Column(
                children: [
                  CustomTextWidget(
                    text: 'Join ToNikah.com',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: 'waskmask',
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text:
                        'Begin your journey to Jannah with the one meant\nfor you.',
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
              text: widget.type == 'email' ? 'E-mail address' : 'Phone number',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            if (widget.type == 'email')
              CustomTextFieldWidget(
                hintText: 'Enter e-mail address',
                controller: TextEditingController(),
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                borderColor: Theme.of(context).hintColor,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
              ),
            if (widget.type == 'phone')
              CustomTextFieldWidget(
                hintText: 'Enter phone number',
                controller: TextEditingController(),
                inputType: TextInputType.number,
                maxLength: 10,
                inputAction: TextInputAction.next,
                borderColor: Theme.of(context).hintColor,
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 10.0),
                    Image.asset(
                      '$kIconsPath/flag.png',
                      width: 20,
                      height: 20.0,
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded),
                  ],
                ),
              ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Password',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomPasswordFieldWidget(
              hintText: 'Enter Password',
              controller: TextEditingController(),
              inputType: TextInputType.text,
              inputAction: TextInputAction.done,
              prefixIcon: Icons.lock_outline_rounded,
              isPasswordVisible: false,
              onPasswordView: () {},
            ),
            SizedBox(height: 15.0),
            CustomTermsPrivacyWidget(accept: true, onAccept: (check) {}),
            SizedBox(height: 25.0),
            GradientButtonWidget(
              text: 'Create my account',
              onClick: () {
                context.push(OtpScreen.id);
              },
              isIcon: false,
              height: 45.0,
              width: double.infinity,
              fontSize: 15.0,
              radius: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
