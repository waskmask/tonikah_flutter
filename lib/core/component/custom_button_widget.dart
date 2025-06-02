import 'package:flutter/material.dart';

import '../helper/constants.dart';
import 'custom_text_widget.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onClick,
    this.width = double.infinity,
    this.height = 50.0,
    this.fontSize = 16.0,
    this.textColor = Colors.white,
    this.btnColor = kButtonColor,
    this.radius = 8.0,
  });

  final String text;
  final double width;
  final double height;
  final double fontSize;
  final Color textColor;
  final Color btnColor;
  final double radius;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        minimumSize: Size(width, height),
      ),
      child: CustomTextWidget(
        text: text,
        textColor: textColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onClick,
    required this.btnName,
    this.borderColor = kAppColor,
    this.textColor = kAppColor,
    this.btnColor = Colors.white,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w600,
    this.radius = 25,
    this.height = 45,
    this.width = 80,
    this.icon,
  });

  final String btnName;
  final VoidCallback onClick;
  final Color borderColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final double radius;
  final double height;
  final double width;
  final Color btnColor;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: icon,
      onPressed: onClick,
      style: TextButton.styleFrom(
        backgroundColor: btnColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: borderColor,width: 2),
        ),
      ),
      label: CustomTextWidget(
        text: btnName,
        textColor: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onClick,
    this.bgColor = Colors.black12,
    required this.icon,
    this.size = 25.0,
    this.padding = 5,
    this.iconColor = Colors.white,
  });

  final IconData icon;
  final Color bgColor;
  final VoidCallback onClick;
  final double size;
  final double padding;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClick,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      icon: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
        child: Icon(icon, color: iconColor, size: size),
      ),
    );
  }
}

class ButtonContainerWidget extends StatelessWidget {
  const ButtonContainerWidget({
    super.key,
    required this.text,
    required this.onClick,
    required this.btnColor,
    this.fontSize = 14,
    this.radius = 8,
    this.padding,
    this.textColor = Colors.white
  });

  final String text;
  final Color btnColor;
  final VoidCallback onClick;
  final double fontSize;
  final EdgeInsetsGeometry? padding;
  final double radius;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        padding:
            padding ??
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
        margin: const EdgeInsets.only(top: 5.0),
        child: CustomTextWidget(
          text: text,
          textColor: textColor,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
          fontSize: fontSize,
        ),
      ),
    );
  }
}

class GradientButtonWidget extends StatelessWidget {
  const GradientButtonWidget({
    super.key,
    required this.text,
    this.height = 50.0,
    this.width = 200.0,
    this.padding,
    this.radius = 8,
    this.icon = Icons.navigate_next,
    this.isIcon = true,
    required this.onClick,
    this.fontSize = 16.0
  });

  final String text;
  final double height;
  final double width;
  final EdgeInsets? padding;
  final double radius;
  final bool isIcon;
  final IconData icon;
  final VoidCallback onClick;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: height,
        width: width,
        padding:padding ?? EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          gradient: kButtonGradient,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          children: [
            if (isIcon) SizedBox(width: 20),
            Expanded(
              child: CustomTextWidget(
                text: text,
                textColor: Colors.white,
                fontSize: fontSize,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400,
              ),
            ),
            if (isIcon) Icon(icon, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
