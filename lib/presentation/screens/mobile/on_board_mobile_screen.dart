import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_nikah_app/core/component/custom_slider_dot_widget.dart';
import 'package:to_nikah_app/core/component/custom_text_widget.dart';
import 'package:to_nikah_app/core/helper/constants.dart';
import 'package:to_nikah_app/presentation/screens/common/registration_option_screen.dart';

import '../../../core/component/custom_button_widget.dart';

class OnBoardMobileScreen extends StatefulWidget {
  const OnBoardMobileScreen({super.key});

  @override
  State<OnBoardMobileScreen> createState() => _OnBoardMobileScreenState();
}

class _OnBoardMobileScreenState extends State<OnBoardMobileScreen> {
  int _selectedIndex = 0;
  final PageController _controller = PageController();

  List<Widget> onBoardWidget = [
    OnBoardFirstWidget(),
    OnBoardSecondWidget(),
    OnBoardThirdWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              itemCount: onBoardWidget.length,
              itemBuilder: (context, index) {
                return onBoardWidget[index];
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GradientButtonWidget(
                    text: _selectedIndex == 2? 'Bismillah' :'Next',
                    fontSize: 14,
                    onClick: () {

                      if(_selectedIndex == 2){
                      //  context.go(RegistrationOptionScreen.id);
                       context.push(RegistrationOptionScreen.id);
                      }else{
                        _selectedIndex +=1;
                        _controller.animateToPage(
                          _selectedIndex,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }

                    },
                  ),
                  SizedBox(height: 30.0),
                  CustomSliderDotWidget(
                    itemCount: onBoardWidget.length,
                    selectedColor: Theme.of(context).primaryColorLight,
                    selectedIndex: _selectedIndex,
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardFirstWidget extends StatelessWidget {
  const OnBoardFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 180.0,
        width: 180.0,
       child: SvgPicture.asset('$kLogoPath/logo_verticle.svg'),
      ),
    );
  }
}

class OnBoardSecondWidget extends StatelessWidget {
  const OnBoardSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('$kImagePath/on_board.png'),
        Positioned(
          left: 40,
          right: 40,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35.0),
              CustomTextWidget(
                text: 'A Platform',
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
              CustomTextWidget(
                text: 'Only for Marriage',
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'waskmask',
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomTextWidget(
                  text: kOnboardA,
                  textColor: Theme.of(context).hintColor,
                  fontSize: 15.0,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OnBoardThirdWidget extends StatelessWidget {
  const OnBoardThirdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('$kImagePath/on_board.png'),
        Positioned(
          left: 40,
          right: 40,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35.0),
              CustomTextWidget(
                text: 'BY',
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
              CustomTextWidget(
                text: 'Continuing',
                textColor: Theme.of(context).primaryColorLight,
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'waskmask',
              ),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    CustomTextWidget(
                      text: kOnboardB,
                      textColor: Theme.of(context).hintColor,
                      fontSize: 15.0,
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 20.0),
                    RichText(
                      textAlign: TextAlign.center,
                      textScaler: TextScaler.linear(1.0),
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$kOnboardC ",
                            style: GoogleFonts.roboto(
                              color: Theme.of(context).hintColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of use ',
                            style: GoogleFonts.roboto(
                              color: kBlueColor,
                              fontSize: 14.0,

                              decorationColor: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
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
      ],
    );
  }
}
