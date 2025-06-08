import 'package:flutter/material.dart';
import 'package:to_nikah_app/core/component/custom_text_widget.dart';
import 'package:to_nikah_app/core/helper/constants.dart';
import 'package:to_nikah_app/presentation/screens/mobile/register/photo_profile_mobile_screen.dart';

import '../../../core/component/custom_text_field_widget.dart';

class EditProfileMobileScreen extends StatefulWidget {
  const EditProfileMobileScreen({super.key});

  @override
  State<EditProfileMobileScreen> createState() =>
      _EditProfileMobileScreenState();
}

class _EditProfileMobileScreenState extends State<EditProfileMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        foregroundColor: Theme.of(context).primaryColorLight,
        title: CustomTextWidget(
          text: 'Edit Profile',
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          textColor: Theme.of(context).primaryColorLight,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextWidget(
                    text: 'Mohammed Irfan, ',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  CustomTextWidget(
                    text: '28',
                    textColor: Theme.of(context).hintColor,
                    fontSize: 18.0,
                    fontFamily: kWasMaskBold,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            CustomTextWidget(
              text: 'Add/Remove images',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
            SizedBox(height:10.0),
            Row(
              children: [
                Expanded(child: PhotoPickWidget()),
                SizedBox(width: 13.0),
                Expanded(child: PhotoPickWidget()),
                SizedBox(width: 13.0),
                Expanded(child: PhotoPickWidget()),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                        text: 'I want to keep my pictures private',
                        textColor: Theme.of(context).primaryColorLight,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                      CustomTextWidget(
                        text: 'You can make your images public anytime.',
                        textColor: kHintColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.0,
                      ),
                    ],
                  ),
                ),
                Switch(
                  value: false,
                  onChanged: (value) {},
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey.shade100,
                  trackOutlineColor: WidgetStatePropertyAll(
                    Colors.grey.shade100,
                  ),
                  trackOutlineWidth: WidgetStatePropertyAll(0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            CustomTextWidget(
              text: 'Profile Headline',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            CustomTextFieldWidget(
              hintText: 'Write a headline for this profile',
              controller: TextEditingController(),
              inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              borderColor: Theme.of(context).hintColor,
            ),
            SizedBox(height: 20.0),
            CustomTextWidget(
              text: 'Bio',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
            SizedBox(height: 5.0),
            DescriptionTextField(
              hintText:
              'Share a brief description to help others understand you better.',
              controller: TextEditingController(),
              inputType: TextInputType.text,
              inputAction: TextInputAction.done,
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
