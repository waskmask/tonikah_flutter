
import 'package:flutter/material.dart';

import '../helper/constants.dart';

class CustomSliderDotWidget extends StatelessWidget {
  const CustomSliderDotWidget({
    super.key,
    required this.itemCount,
    this.selectedIndex = 0,
    this.color = Colors.grey,
    this.selectedColor = kAppColor
  });

  final int itemCount;
  final int selectedIndex;
  final Color selectedColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        itemCount,
        (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            margin: EdgeInsets.only(right: 3.0),
            height: 4.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: selectedIndex == index ? selectedColor:color,
              borderRadius: BorderRadius.circular(25),
            ),
          );
        },
      ),
    );
  }
}
