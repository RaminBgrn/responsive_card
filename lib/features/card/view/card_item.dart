import 'package:flutter/material.dart';
import 'package:responsive_card/constants/custom_colors.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: myOrange[400],
      ),
    );
  }
}
