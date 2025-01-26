import 'package:flutter/material.dart';
import 'package:responsive_card/features/card/view/desktop_cart_item.dart';
import 'package:responsive_card/features/card/view/mobile_cart_item.dart';
import 'package:responsive_card/features/card/view/tablet_cart_item.dart';

import 'package:responsive_framework/responsive_framework.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ResponsiveValue<Widget>(context,
          defaultValue: SizedBox(),
          conditionalValues: [
            Condition.equals(name: MOBILE, value: MobileCartItem()),
            Condition.equals(name: TABLET, value: TabletCartItem()),
            Condition.largerThan(name: TABLET, value: DesktopCartItem()),
          ]).value,
    );
  }
}
