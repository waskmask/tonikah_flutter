import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/core/helper/constants.dart';
import 'package:to_nikah_app/presentation/screens/common/basic_profile_screen.dart';

import '../../../../core/component/custom_button_widget.dart';
import '../../../../core/component/custom_text_field_widget.dart';
import '../../../../core/component/custom_text_widget.dart';

class BasicProfileMobileScreen extends StatefulWidget {
  const BasicProfileMobileScreen({super.key});

  @override
  State<BasicProfileMobileScreen> createState() =>
      _BasicProfileMobileScreenState();
}

class _BasicProfileMobileScreenState extends State<BasicProfileMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).primaryColorLight,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Center(
              child: Column(
                children: [
                  CustomTextWidget(
                    text: 'Profile Basics',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: kWasMaskBold,
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text:
                        'Kindly provide the essential details of the person this profile is for.',
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
              text: 'Name',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Full name',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Gender',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Select Gender',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
              suffixIcon: SvgPicture.asset(
                '$kIconsPath/gender.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Date of Birth',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Select Date',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
              suffixIcon: SvgPicture.asset(
                '$kIconsPath/calendar.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Country of origin',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Select your origin country',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
              suffixIcon: SvgPicture.asset(
                '$kIconsPath/origin.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Ethnic group',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Select your Ethnicity',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
              suffixIcon: SvgPicture.asset(
                '$kIconsPath/ethnic_group.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 20.0),
            CustomTextWidget(
              text: 'Please double-check all information before proceeding.',
              textColor: Theme.of(context).primaryColor,
              fontSize: 13.0,
            ),
            CustomTextWidget(
              text:
                  'The details on this page cannot be changed later as they form the foundation of the profile.',
              textColor: kGreyColor,
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: GradientButtonWidget(
              text: 'Next',
              fontSize: 14,
              onClick: () {
                context.push(CulturalProfileScreen.id);
              },
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
