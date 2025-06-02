import 'package:flutter/material.dart';

import '../../../core/component/custom_button_widget.dart';
import '../../../core/component/custom_text_field_widget.dart';
import '../../../core/component/custom_text_widget.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Center(
              child: Column(
                children: [
                  CustomTextWidget(
                    text: 'Login',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: 'waskmask',
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text:
                    'Welcome back! Sign in to your toNikah account and continue your journey to find the right match.',
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
              text: 'E-mail address',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
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

            SizedBox(height: 25.0),
            GradientButtonWidget(
              text: 'Login',
              onClick: () {

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

