import 'package:flutter/material.dart';
import 'package:responsive_card/constants/responsive_size.dart';
import 'package:responsive_card/features/card/model/image_model.dart';
import 'package:responsive_card/features/card/viewModel/image_section.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CardItem extends StatelessWidget {
  final ImageModel model;
  const CardItem({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: ResponsiveSize.getCardHeight(context),
      width: ResponsiveSize.getCardWidth(context),
      child: model.platform == MOBILE
          ? Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: (ResponsiveSize.getCardHeight(context) - 60),
                    width: ResponsiveSize.getCardWidth(context),
                    color: Colors.amber,
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: ImageSection(model: model)),
              ],
            )
          : Column(
              children: [
                Expanded(flex: 1, child: ImageSection(model: model)),
                Expanded(
                  flex: 2,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    height: (ResponsiveSize.getCardHeight(context) - 160),
                    width: ResponsiveSize.getCardWidth(context),
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
    );
  }
}
