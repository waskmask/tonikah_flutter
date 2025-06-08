import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:to_nikah_app/core/component/custom_button_widget.dart';
import 'package:to_nikah_app/core/component/custom_text_widget.dart';
import 'package:to_nikah_app/core/helper/constants.dart';
import 'package:to_nikah_app/core/helper/size_config.dart';
import 'package:to_nikah_app/core/model/profile_info.dart';
import 'package:to_nikah_app/presentation/screens/common/edit_profile_screen.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                            SvgPicture.asset('$kIconsPath/profile_call.svg'),
                            SizedBox(width: 3.0),
                            SvgPicture.asset('$kIconsPath/profile_camera.svg'),
                            SizedBox(width: 3.0),
                            Icon(
                              Icons.verified,
                              color: Colors.blueAccent.shade700,
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
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.0),
                  Wrap(
                    children: List.generate(ProfileInfo.basicInfoList.length, (
                      index,
                    ) {
                      final info = ProfileInfo.basicInfoList[index];
                      return ProfileInfoWidget(info: info, bgColor: kInfoColor);
                    }),
                  ),
                  SizedBox(height: 10.0),
                  CustomTextWidget(
                    text:
                        'Assalaamu Alaikum, I am looking for a good Muslima who will complete my Deen.',
                    textColor: Theme.of(context).primaryColorLight,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: kInfoColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Appearance',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.apperanceInfoList.length,
                      (index) {
                        final info = ProfileInfo.apperanceInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: Colors.white,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Marriage/Future plans',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.marriageInfoList.length,
                      (index) {
                        final info = ProfileInfo.marriageInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: kInfoColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: kInfoColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Religious Beliefs and Practices',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.religiousInfoList.length,
                      (index) {
                        final info = ProfileInfo.religiousInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: Colors.white,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Lifestyle & Habit',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.lifestyleInfoList.length,
                      (index) {
                        final info = ProfileInfo.lifestyleInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: kInfoColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Personal details',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.personalInfoList.length,
                      (index) {
                        final info = ProfileInfo.personalInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: kInfoColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Bio',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  CustomTextWidget(
                    text: kBio,
                    textColor: Theme.of(context).hintColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Personal details',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.personalInfoList.length,
                      (index) {
                        final info = ProfileInfo.personalInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: kInfoColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    text: 'Hobbies',
                    textColor: Theme.of(context).primaryColorLight,
                    fontFamily: kWasMaskBold,
                    fontSize: 18.0,
                  ),
                  SizedBox(height: 20.0),
                  Wrap(
                    children: List.generate(
                      ProfileInfo.hobbiesInfoList.length,
                      (index) {
                        final info = ProfileInfo.hobbiesInfoList[index];
                        return ProfileInfoWidget(
                          info: info,
                          bgColor: kInfoColor,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: CustomTextButton(
                onClick: () {
                  context.push(EditProfileScreen.id);
                },
                btnName: 'Edit Profile',
                width: 180.0,
                height: 45.0,
                borderColor: Colors.blueAccent.shade700,
                textColor: Colors.blueAccent.shade700,
                radius: 8.0,
                fontWeight: FontWeight.w500,
                borderWidth: 0.8,
              ),
            ),
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
    required this.info,
    required this.bgColor,
  });

  final ProfileInfo info;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              '$kIconsPath/${info.icon}',
              width: 15.0,
              height: 15.0,
            ),
            SizedBox(width: 10.0),
            CustomTextWidget(
              text: info.name ?? '',
              textColor: Theme.of(context).primaryColorLight,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}
