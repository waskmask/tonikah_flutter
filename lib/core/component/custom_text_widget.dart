import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constants.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.text,
    required this.textColor,
    this.fontSize = 14.0,
    this.maxLine = 500,
    this.fontWeight = FontWeight.w500,
    this.textAlign = TextAlign.start,
    this.textDecoration = TextDecoration.none,
    this.fontFamily,
  });

  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final int? maxLine;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      textScaler: TextScaler.linear(1.0),
      overflow: TextOverflow.ellipsis,
      style:
          fontFamily == null
              ? GoogleFonts.roboto(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
                decoration: textDecoration,
              )
              : TextStyle(
                color: textColor,
                fontSize: fontSize,
                // fontWeight: fontWeight,
                fontFamily: fontFamily,
              ),
    );
  }
}

class BottomTitleWidget extends StatelessWidget {
  const BottomTitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kAppColor,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          Expanded(
            child: CustomTextWidget(text: title, textColor: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.clear, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class CustomTermsPrivacyWidget extends StatelessWidget {
  const CustomTermsPrivacyWidget({
    super.key,
    required this.accept,
    required this.onAccept,
    this.isPrivacy = false,
  });

  final bool accept;
  final ValueChanged<bool?> onAccept;
  final bool isPrivacy;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 20.0,
          width: 20.0,
          child: Checkbox(
            activeColor: kBlueColor,
            checkColor: Colors.white,
            side: BorderSide(color: kBlueColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3.0),
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: accept,
            onChanged: onAccept,
          ),
        ),
        SizedBox(width: 10.0),
        Flexible(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Creating an account means you accept our ",
                  style: GoogleFonts.roboto(
                    color: Theme.of(context).hintColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Privacy Policy ',
                  style: GoogleFonts.roboto(
                    color: kBlueColor,
                    fontSize: 12.0,
                    decorationColor: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                TextSpan(
                  text: 'and ',
                  style: GoogleFonts.roboto(
                    color: Theme.of(context).hintColor,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Terms of Use.',
                  style: GoogleFonts.roboto(
                    color: kBlueColor,
                    decorationColor: Theme.of(context).primaryColor,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class RequiredTextWidget extends StatelessWidget {
  const RequiredTextWidget({
    super.key,
    required this.text,
    this.fontSize = 12.0,
    this.isRequired = true,
    this.fontColor = Colors.black54,
  });

  final String text;
  final bool isRequired;
  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: CustomTextWidget(
            text: text,
            textColor: fontColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 1.0),
        if (isRequired)
          CustomTextWidget(
            text: '*',
            textColor: Colors.red,
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
      ],
    );
  }
}

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.firstText,
    required this.secondText,
    this.firstColor = Colors.black,
    this.secondColor = Colors.black,
    this.fontSize = 12.0,
  });

  final String firstText;
  final String secondText;
  final Color firstColor;
  final Color secondColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextWidget(
          text: firstText,
          textColor: firstColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(width: 3.0),
        Flexible(
          child: CustomTextWidget(
            text: secondText,
            textColor: secondColor,
            fontWeight: FontWeight.w700,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(this.text, {super.key, required this.gradient});

  final String text;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback:
            (bounds) => gradient.createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            ),
        child: CustomTextWidget(
          text: text,
          textColor: Colors.white,
          fontSize: 40.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
