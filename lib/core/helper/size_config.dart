import 'package:flutter/material.dart';

class SizeConfig {
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static late TextScaler textScaler;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    textScaler = MediaQuery.of(context).textScaler;
  }
}

extension SizeDoubleExt on double {

  double h() {
    double screenHeight = SizeConfig.screenHeight;
    var res = (this / 700.0) * screenHeight;
    return res;
  }

  double w() {
    double screenWidth = SizeConfig.screenWidth;
    var res = (this / 450.0) * screenWidth;
    return res;
  }

  double sp() {
    return SizeConfig.textScaler.scale(this);
  }

}
