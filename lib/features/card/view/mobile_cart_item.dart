import 'package:flutter/material.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/features/card/widgets/image_section.dart';
import 'package:responsive_card/features/card/widgets/text_section.dart';

class MobileCartItem extends StatelessWidget {
  const MobileCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: MediaQuery.sizeOf(context).width,
      height: 270,
      duration: const Duration(milliseconds: 200),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 102,
                height: 102,
                margin: const EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: myGrey[500],
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: MediaQuery.sizeOf(context).width,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: myGrey[800]!,
                    border: Border.all(
                      width: 1,
                      color: myGrey[500]!,
                    )),
                child: TextSection()),
          ),
          Align(alignment: Alignment.topCenter, child: ImageSection()),
        ],
      ),
    );
  }
}
