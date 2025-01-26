import 'package:flutter/material.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: myGrey[800],
          borderRadius: BorderRadius.circular(
              ResponsiveValue<double>(context, conditionalValues: [
            Condition.equals(name: TABLET, value: 18),
            Condition.equals(name: MOBILE, value: 100),
            Condition.largerThan(name: TABLET, value: 0)
          ]).value),
        ),
        width: ResponsiveValue<double>(context, conditionalValues: [
          Condition.largerThan(
              name: MOBILE, value: MediaQuery.sizeOf(context).width),
          Condition.equals(name: MOBILE, value: 100),
        ]).value,
        height: ResponsiveValue<double>(context, conditionalValues: [
          Condition.largerThan(
              name: MOBILE, value: MediaQuery.sizeOf(context).height),
          Condition.equals(name: MOBILE, value: 100),
        ]).value,
        child: FlutterLogo(
          size: 500,
        ));
  }
}
