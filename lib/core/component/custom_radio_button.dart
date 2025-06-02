import 'package:flutter/material.dart';
import '../helper/constants.dart';
import 'custom_text_widget.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton(
      {super.key,
      required this.label,
      required this.value,
      required this.onChanged,
      this.radius = 3.0,
      this.textColor = kTextColor,
        this.boxColor =kButtonColor,
      this.fontSize = 14.0});

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  final double radius;
  final Color textColor;
  final double fontSize;
  final Color boxColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 30.0,
            width: 30.0,
            child: Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              activeColor: boxColor,
              checkColor: Colors.white,
              side:  BorderSide(color: boxColor, width: 1.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius)),
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ),
          SizedBox(width:3.0),
          Flexible(
            child: CustomTextWidget(
              text: label,
              textColor: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
