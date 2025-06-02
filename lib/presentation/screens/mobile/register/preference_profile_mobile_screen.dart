import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/presentation/screens/common/home_screen.dart';

import '../../../../core/component/custom_button_widget.dart';
import '../../../../core/component/custom_text_field_widget.dart';
import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/helper/constants.dart';

class PreferenceProfileMobileScreen extends StatefulWidget {
  const PreferenceProfileMobileScreen({super.key});

  @override
  State<PreferenceProfileMobileScreen> createState() =>
      _PreferenceProfileMobileScreenState();
}

class _PreferenceProfileMobileScreenState
    extends State<PreferenceProfileMobileScreen> {
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
                    text: 'Ideal Partner Preferences',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: kWasMaskBold,
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text:
                        'Describe what you’re looking for in a potential partner.',
                    textColor: Theme.of(context).hintColor,
                    fontSize: 13.0,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'Preferred age - From',
                        textColor: Theme.of(context).primaryColorLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                      SizedBox(height: 5.0),
                      CustomTextFieldWidget(
                        hintText: 'Select "From" age',
                        controller: TextEditingController(),
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                        borderColor: Theme.of(context).hintColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'To',
                        textColor: Theme.of(context).primaryColorLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                      SizedBox(height: 5.0),
                      CustomTextFieldWidget(
                        hintText: 'Select "To" age',
                        controller: TextEditingController(),
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                        borderColor: Theme.of(context).hintColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'Preferred Height - From',
                        textColor: Theme.of(context).primaryColorLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                      SizedBox(height: 5.0),
                      CustomTextFieldWidget(
                        hintText: 'Select "From" height',
                        controller: TextEditingController(),
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                        borderColor: Theme.of(context).hintColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'To',
                        textColor: Theme.of(context).primaryColorLight,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.0,
                      ),
                      SizedBox(height: 5.0),
                      CustomTextFieldWidget(
                        hintText: 'Select "To" height',
                        controller: TextEditingController(),
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next,
                        borderColor: Theme.of(context).hintColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Preferred Marital status',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Select preferred marital status',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
            ),
            SizedBox(height: 15.0),
            CustomTextWidget(
              text: 'Describe your partner preference',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            DescriptionTextField(
              hintText: "Describe the kind of partner you're looking for",
              controller: TextEditingController(),
              inputType: TextInputType.text,
              inputAction: TextInputAction.done,
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
              text: 'Save',
              fontSize: 14,
              onClick: () {
                context.push(HomeScreen.id);
              },
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
