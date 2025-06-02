import 'package:flutter/material.dart';
import 'package:to_nikah_app/core/component/custom_text_widget.dart';
import 'package:to_nikah_app/core/helper/constants.dart';
import 'package:to_nikah_app/core/helper/size_config.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({super.key});

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: CustomTextWidget(
          text: 'My Profile',
          textColor: Colors.white,
          fontSize: 18.0,
          fontFamily: kWasMaskBold,
        ),
        actions: [
          Icon(Icons.lock_outline_rounded),
          SizedBox(width: 15.0),
          Icon(Icons.photo),
          SizedBox(width: 15.0),
          Icon(Icons.edit),
          SizedBox(width: 15.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: SizeConfig.screenHeight / 1.9,
              child: Stack(
                children: [
                  Image.asset(
                    '$kImagePath/demo_profile.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: SizeConfig.screenHeight / 1.9,
                  ),
                  Positioned(
                    bottom: 20.0,
                    left: 20.0,
                    right: 20.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CustomTextWidget(
                                    text: 'Mohammed Irfan, ',
                                    textColor: Colors.white,
                                    fontSize: 25,
                                    fontFamily: kWasMaskBold,
                                  ),
                                  CustomTextWidget(
                                    text: '28',
                                    textColor: Colors.white,
                                    fontSize: 25,
                                    fontFamily: kWasMaskBold,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          children: [
                            Image.asset(
                              '$kIconsPath/flag.png',
                              width: 15.0,
                              height: 15.0,
                            ),
                            SizedBox(width: 8.0),
                            CustomTextWidget(
                              text: 'Frankfurt, Germany',
                              textColor: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
