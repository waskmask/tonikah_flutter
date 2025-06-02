import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/core/component/custom_button_widget.dart';
import 'package:to_nikah_app/core/component/custom_text_widget.dart';
import 'package:to_nikah_app/core/helper/constants.dart';
import 'package:to_nikah_app/presentation/screens/common/register_screen.dart';

import '../common/login_screen.dart';

class RegistrationOptionMobileScreen extends StatefulWidget {
  const RegistrationOptionMobileScreen({super.key});

  @override
  State<RegistrationOptionMobileScreen> createState() =>
      _RegistrationOptionMobileScreenState();
}

class _RegistrationOptionMobileScreenState
    extends State<RegistrationOptionMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        foregroundColor: Theme.of(context).primaryColorLight,
        backgroundColor: Colors.transparent,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30.0),
            CustomTextWidget(
              text: 'Register using?',
              textColor: Theme.of(context).primaryColorLight,
              fontSize: 25.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'waskmask',
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Select a method to register on toNikah.com',
              textColor: Theme.of(context).hintColor,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 30.0),
            CustomTextButton(
              onClick: () {
                context.push(RegisterScreen.id, extra: 'email');
              },
              btnName: 'Email address',
              radius: 8.0,
              fontWeight: FontWeight.w400,
              width: double.infinity,
              fontSize: 16.0,
              borderColor: Theme.of(context).hintColor,
              textColor: Theme.of(context).hintColor,
              icon: Icon(
                Icons.email_outlined,
                color: Theme.of(context).hintColor,
                size: 22.0,
              ),
            ),
            SizedBox(height: 20.0),
            CustomTextButton(
              onClick: () {
                context.push(RegisterScreen.id, extra: 'phone');
              },
              btnName: 'Phone number',
              radius: 8.0,
              fontWeight: FontWeight.w400,
              width: double.infinity,
              fontSize: 16.0,
              borderColor: Theme.of(context).hintColor,
              textColor: Theme.of(context).hintColor,
              icon: Icon(
                Icons.local_phone_outlined,
                color: Theme.of(context).hintColor,
                size: 22.0,
              ),
            ),
            SizedBox(height: 20.0),
            CustomTextWidget(
              text: 'OR',
              textColor: Theme.of(context).hintColor,
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 20.0),
            CustomTextButton(
              onClick: () {},
              btnName: 'Sign in with Google',
              radius: 8.0,
              fontWeight: FontWeight.w400,
              width: double.infinity,
              fontSize: 16.0,
              borderColor: Colors.grey.shade200,
              btnColor: Colors.grey.shade200,
              textColor: Theme.of(context).hintColor,
              icon: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  '$kIconsPath/google.png',
                  height: 20.0,
                  width: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
