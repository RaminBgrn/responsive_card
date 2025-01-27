import 'package:flutter/material.dart';
import 'package:responsive_card/constants/responsive_size.dart';
import 'package:responsive_card/features/card/model/image_model.dart';
import 'package:responsive_card/features/card/model/text_model.dart';
import 'package:responsive_card/features/card/viewModel/image_section.dart';
import 'package:responsive_card/features/card/viewModel/text_section.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CardItem extends StatelessWidget {
  final ImageModel imageModel;
  final TextModel textModel;
  const CardItem({
    required this.imageModel,
    required this.textModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: ResponsiveSize.getCardHeight(context),
      width: ResponsiveSize.getCardWidth(context),
      child: imageModel.platform == MOBILE
          ? Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextSection(
                    model: textModel,
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: ImageSection(model: imageModel)),
              ],
            )
          : Column(
              children: [
                Expanded(flex: 1, child: ImageSection(model: imageModel)),
                Expanded(
                    flex: 2,
                    child: TextSection(
                      model: textModel,
                    )),
              ],
            ),
    );
  }
}
