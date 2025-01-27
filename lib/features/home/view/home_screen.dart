import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/features/card/model/image_model.dart';
import 'package:responsive_card/features/card/view/card_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: myGrey[800],
        title: Text(
          'Responsive Card',
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: myGrey[200],
          ),
        ),
      ),
      backgroundColor: myGrey[700],
      body: Center(
        child: ResponsiveValue<Widget>(context,
            defaultValue: SizedBox(),
            conditionalValues: [
              Condition.equals(
                  name: MOBILE,
                  value: CardItem(
                    model: ImageModel(
                        imageSize: 40,
                        imageWidth: 100,
                        imageHeight: 100,
                        imageBorderRadius: 100,
                        platform: MOBILE),
                  )),
              Condition.equals(
                  name: TABLET,
                  value: CardItem(
                    model: ImageModel(
                        imageSize: 200,
                        imageHeight: 100,
                        imageWidth: MediaQuery.sizeOf(context).width,
                        imageBorderRadius: 18,
                        platform: TABLET),
                  )),
              Condition.largerThan(
                  name: TABLET,
                  value: CardItem(
                    model: ImageModel(
                      imageSize: 300,
                      imageWidth: 400,
                      imageHeight: 300,
                      imageBorderRadius: 0,
                    ),
                  )),
            ]).value,
      ),
    );
  }
}
