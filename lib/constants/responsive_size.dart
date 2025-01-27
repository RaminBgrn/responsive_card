import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveSize {
  static double getCardHeight(BuildContext context) {
    return ResponsiveValue<double>(context, conditionalValues: [
      Condition.largerThan(name: TABLET, value: 500),
      Condition.equals(name: TABLET, value: 400),
      Condition.equals(name: MOBILE, value: 250),
    ]).value;
  }

  static double getCardWidth(BuildContext context) {
    return ResponsiveValue<double>(context,
        defaultValue: double.infinity,
        conditionalValues: [
          Condition.largerThan(name: TABLET, value: double.infinity),
          Condition.equals(name: TABLET, value: double.infinity),
          Condition.equals(name: MOBILE, value: double.infinity),
        ]).value;
  }

  // static double getImageBorderRadius(BuildContext context) {
  //   return ResponsiveValue<double>(context, conditionalValues: [
  //     Condition.equals(name: TABLET, value: 18),
  //     Condition.equals(name: MOBILE, value: 100),
  //     Condition.largerThan(name: TABLET, value: 0)
  //   ]).value;
  // }

  // static double getFlutterLogoSize(BuildContext context) {
  //   return ResponsiveBreakpoints.of(context).isTablet ? 200.0 : 60.0;
  // }
}
