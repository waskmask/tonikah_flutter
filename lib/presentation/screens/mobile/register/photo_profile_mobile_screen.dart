import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/presentation/screens/common/basic_profile_screen.dart';

import '../../../../core/component/custom_button_widget.dart';
import '../../../../core/component/custom_text_field_widget.dart';
import '../../../../core/component/custom_text_widget.dart';
import '../../../../core/helper/constants.dart';

class PhotoProfileMobileScreen extends StatefulWidget {
  const PhotoProfileMobileScreen({super.key});

  @override
  State<PhotoProfileMobileScreen> createState() =>
      _PhotoProfileMobileScreenState();
}

class _PhotoProfileMobileScreenState extends State<PhotoProfileMobileScreen> {
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
                    text: 'Photos and Profile Summary',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                    fontFamily: kWasMaskBold,
                  ),
                  SizedBox(height: 15.0),
                  CustomTextWidget(
                    text:
                        'Add images, your headline and a short bio to personalize the profile.',
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
              text: 'Upload image to your profile',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Expanded(child: PhotoPickWidget()),
                SizedBox(width: 13.0),
                Expanded(child: PhotoPickWidget()),
                SizedBox(width: 13.0),
                Expanded(child: PhotoPickWidget()),
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
            SizedBox(height: 15.0),
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
            SizedBox(height: 15.0),
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
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: GradientButtonWidget(
              text: 'Next',
              fontSize: 14,
              onClick: () {
                context.push(LocationProfileScreen.id);
              },
            ),
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}

class PhotoPickWidget extends StatelessWidget {
  const PhotoPickWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        radius: Radius.circular(8.0),
        dashPattern: [7, 2],
        strokeWidth: 1,
      ),
      child: SizedBox(
        height: 150,
        child: Center(child: SvgPicture.asset('$kIconsPath/camera.svg')),
      ),
    );
  }
}
