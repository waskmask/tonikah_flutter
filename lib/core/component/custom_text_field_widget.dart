import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_nikah_app/core/component/pin_code_text_field.dart';

import '../helper/constants.dart';
import 'custom_text_widget.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isEnable;
  final int maxLength;
  final String label;
  final VoidCallback? onSuffixTap;
  final bool isFocus;
  final Color borderColor;
  final bool isRequired;

  const CustomTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.inputType,
      required this.inputAction,
      this.prefixIcon,
      this.isEnable = true,
      this.isFocus = true,
      this.label = '',
      this.maxLength = 100,
      this.onSuffixTap,
      this.borderColor = kAppColor,
      this.suffixIcon,
      this.isRequired = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      canRequestFocus: isFocus,
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: inputType,
      enableInteractiveSelection: false,
      textInputAction: inputAction,
      controller: controller,
      onTap: onSuffixTap,
      style: GoogleFonts.roboto(
        color: Theme.of(context).primaryColorLight,
        fontWeight: FontWeight.w400,
        fontSize: 14.0
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
      ],
      decoration: InputDecoration(
        label: label.isEmpty
            ? null
            : RequiredTextWidget(
                text: label,
                fontSize: 14.0,
                isRequired: isRequired,
                fontColor: Theme.of(context).primaryColor,
              ),
        // labelText: label,
        labelStyle: GoogleFonts.roboto(
          color: Theme.of(context).hintColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.0
        ),
        enabled: isEnable,
        prefixIcon:prefixIcon,
        suffixIcon:suffixIcon,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          color: kHintColor,
          fontWeight: FontWeight.w600,
          fontSize: 12.0
        ),
        filled: true,
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor,width: 2),
            borderRadius: BorderRadius.circular(8.0)),
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor,width: 2),
            borderRadius: BorderRadius.circular(8.0)),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor,width: 2),
            borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.inputType,
      required this.inputAction,
      this.isEnable = true,
      this.isPassword = false});

  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextInputAction inputAction;

  final bool isEnable;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textCapitalization: TextCapitalization.sentences,
        style: GoogleFonts.roboto(
            color: Theme.of(context).primaryColorLight,
            fontWeight: FontWeight.w500,
            fontSize: 14.0),
        obscureText: isPassword,
        maxLines: 5,
        cursorColor: Theme.of(context).primaryColor,
        keyboardType: inputType,
        textInputAction: inputAction,
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          enabled: isEnable,
          // labelText: hintText,
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
              color: kHintColor,
              fontWeight: FontWeight.w600,
              fontSize: 12.0),
          filled: true,
          fillColor: Colors.white,
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).hintColor,width: 2),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).hintColor,width: 2),
              borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).hintColor,width: 2),
              borderRadius: BorderRadius.circular(8)),
        ));
  }
}

class CustomPasswordFieldWidget extends StatelessWidget {
  const CustomPasswordFieldWidget(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.inputType,
      required this.inputAction,
      required this.prefixIcon,
      this.isEnable = true,
      required this.isPasswordVisible,
      required this.onPasswordView,
      this.label = ''});

  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final IconData prefixIcon;
  final bool isEnable;
  final bool isPasswordVisible;
  final VoidCallback onPasswordView;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordVisible,
      style: GoogleFonts.roboto(
        color: Theme.of(context).primaryColorLight,
        fontWeight: FontWeight.w400,
        fontSize: 14.0
      ),
      cursorColor: Theme.of(context).primaryColor,
      keyboardType: inputType,
      textInputAction: inputAction,
      controller: controller,
      decoration: InputDecoration(
        label: label.isEmpty
            ? null
            : RequiredTextWidget(
                text: label,
                fontSize: 15.0,
                isRequired: false,
                fontColor: Theme.of(context).primaryColor,
              ),
        // labelText: label,
        labelStyle: GoogleFonts.roboto(
          color: Theme.of(context).hintColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.0
        ),
        enabled: isEnable,
        prefixIcon: Icon(
          prefixIcon,
          color: Theme.of(context).primaryColor,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          color: kHintColor,
          fontWeight: FontWeight.w600,
          fontSize: 12.0
        ),
        filled: true,
        disabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color:Theme.of(context).hintColor,width: 2),
            borderRadius: BorderRadius.circular(8.0)),
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).hintColor,width: 2),
            borderRadius: BorderRadius.circular(8.0)),
        border: OutlineInputBorder(
            borderSide:  BorderSide(color: Theme.of(context).hintColor,width: 2),
            borderRadius: BorderRadius.circular(8.0)),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Theme.of(context).hintColor,
          ),
          onPressed: onPasswordView,
        ),
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      highlightColor: Theme.of(context).scaffoldBackgroundColor,
      child: Container(
        height: 60.0,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            // border: Border.all(color: Theme.of(context).hintColor,),
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey.shade500)]),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomTextWidget(
              text: 'Search for medicines',
              textColor: Theme.of(context).hintColor,
              fontSize: 15.0,
            )
          ],
        ),
      ),
    );
  }
}

//todo: custom cupertino
class CustomNoteTextFieldWidget extends StatelessWidget {
  const CustomNoteTextFieldWidget({
    super.key,
    required this.controller,
    required this.hint,
    this.isDone = false,
    this.enabled = true,
    required this.onDone,
  });

  final TextEditingController controller;
  final String hint;
  final bool isDone;
  final bool enabled;
  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.number,
      placeholder: hint,
      style: GoogleFonts.poppins(
          fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.w500),
      suffix: Visibility(
        visible: isDone,
        child: InkWell(
          onTap: onDone,
          child: Container(
            margin: EdgeInsets.only(right: 6.0),
            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0), color: Colors.blue),
            child: CustomTextWidget(
              text: enabled ? 'Done' : 'Edit',
              textColor: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 10.0,
            ),
          ),
        ),
      ),
      onEditingComplete: onDone,
    );
  }
}

class CustomSearchViewWidget extends StatelessWidget {
  const CustomSearchViewWidget(
      {super.key,
      required this.hint,
      required this.onTextChange,
      this.inputType = TextInputType.text,
      this.maxLength,
      required this.controller});

  final String hint;
  final ValueChanged<String> onTextChange;
  final TextInputType inputType;
  final int? maxLength;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      controller: controller,
      prefixInsets: const EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      placeholder: hint,
      keyboardType: inputType,
      autocorrect: true,
      backgroundColor: Colors.grey.shade200,
      style: GoogleFonts.roboto(
        color: Theme.of(context).primaryColorLight,
        fontWeight: FontWeight.w600,
      ),
      borderRadius: BorderRadius.circular(kRadius5),
      onChanged: onTextChange,
    );
  }
}

class CustomOTPTextFieldWidget extends StatelessWidget {
  const CustomOTPTextFieldWidget({
    super.key,
    required this.otpController,
    required this.maxLength,
    this.onChange
  });

  final TextEditingController otpController;
  final int maxLength;
  final ValueChanged<String?>?onChange;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autofocus: true,
      controller: otpController,
      hideCharacter: false,
      highlight: true,
      maxLength: maxLength,
      onTextChanged: onChange,
      onDone: (text) {},
      pinBoxWidth: 45,
      pinBoxHeight: 45,
      pinBoxColor: Colors.grey.shade200,
      highlightPinBoxColor: Colors.grey.shade200,
      focusNode: FocusNode(),
      hasUnderline: false,
      wrapAlignment: WrapAlignment.spaceAround,
      pinTextStyle: GoogleFonts.roboto(fontSize: 20.0,fontWeight: FontWeight.w500),
      pinTextAnimatedSwitcherTransition:
          ProvidedPinBoxTextAnimation.scalingTransition,
      pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 300),
//                    highlightAnimation: true,
      pinBoxDecoration: pinBoxDecorationBuilder,
      highlightAnimationBeginColor: Colors.white,
      highlightAnimationEndColor: Colors.white12,
      keyboardType: TextInputType.number,
    );
  }

  BoxDecoration pinBoxDecorationBuilder(Color borderColor, Color pinBoxColor,
      {double borderWidth = 2.0, double radius = 10.0}) {
    return BoxDecoration(
      color: Colors.grey.shade200,
      border: Border.all(color: Colors.grey.shade200),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    );
  }
}
