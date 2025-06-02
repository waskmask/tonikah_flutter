import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/presentation/screens/common/basic_profile_screen.dart';

import '../../../../core/component/custom_button_widget.dart';
import '../../../../core/component/custom_text_field_widget.dart';
import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/helper/constants.dart';

class LocationProfileMobileScreen extends StatefulWidget {
  const LocationProfileMobileScreen({super.key});

  @override
  State<LocationProfileMobileScreen> createState() => _LocationProfileMobileScreenState();
}

class _LocationProfileMobileScreenState extends State<LocationProfileMobileScreen> {
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
                    text: 'Current location',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: kWasMaskBold,
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text: 'Enter your present city and country. This helps others understand your location for potential matches.',
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
              text: 'City',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Enter a city',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
              suffixIcon: SvgPicture.asset(
                '$kIconsPath/location_city.svg',
                fit: BoxFit.none,
              ),
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Country',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Select your country',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
              suffixIcon: SvgPicture.asset(
                '$kIconsPath/country.svg',
                fit: BoxFit.none,
              ),
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
                context.push(CreatingProfileScreen.id);
              },
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
