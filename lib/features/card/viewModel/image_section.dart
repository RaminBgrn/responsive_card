import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/features/card/model/image_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ImageSection extends StatelessWidget {
  final ImageModel model;
  const ImageSection({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: model.imageBorderRadius!,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: model.imageWidth,
          height: model.imageHeight,
          padding: const EdgeInsets.all(12.0),
          margin: model.platform == TABLET
              ? const EdgeInsets.symmetric(horizontal: 8)
              : null,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: model.imageBorderRadius,
              color: myGrey[800]!.withValues(alpha: 0.1),
              border: Border.all(
                width: 1,
                color: myGrey[600]!,
              )),
          child: FlutterLogo(
            size: model.imageSize,
          ),
        ),
      ),
    );
  }
}
