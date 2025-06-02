import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constants.dart';
import 'custom_text_widget.dart';

class StringDropDownWidget extends StatelessWidget {
  const StringDropDownWidget(
      {super.key,
      required this.initialValue,
      required this.items,
      required this.onChange,this.fontSize = 14.0});

  final String initialValue;
  final List<String> items;
  final ValueChanged onChange;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0)),
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(12.0),
        iconEnabledColor: Theme.of(context).primaryColorLight,
        dropdownColor: Colors.grey.shade100,
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.grey.shade400,
        ),
        isExpanded: true,
        value: initialValue,
        style: GoogleFonts.nunito(
            color: Theme.of(context).primaryColorLight,
            fontSize: fontSize,
            fontWeight: FontWeight.w400),
        underline: const SizedBox(),
        onChanged: onChange,
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: CustomTextWidget(
              text: value,
              textColor: Theme.of(context).primaryColorLight,
              fontSize: fontSize,
              fontWeight: FontWeight.w500,
            ),
          );
        }).toList(),
      ),
    );
  }
}
