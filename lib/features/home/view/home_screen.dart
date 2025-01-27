import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/features/card/model/image_model.dart';
import 'package:responsive_card/features/card/model/text_model.dart';
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
                    textModel: TextModel(
                        alignment: Alignment.topRight,
                        borderRadius: BorderRadius.circular(18)),
                    imageModel: ImageModel(
                        imageSize: 40,
                        imageWidth: 80,
                        imageHeight: 80,
                        imageBorderRadius: BorderRadius.circular(100),
                        platform: MOBILE),
                  )),
              Condition.equals(
                  name: TABLET,
                  value: CardItem(
                    textModel: TextModel(
                      alignment: Alignment.topCenter,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    imageModel: ImageModel(
                        imageSize: 200,
                        imageHeight: 100,
                        imageWidth: MediaQuery.sizeOf(context).width,
                        imageBorderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(18),
                          topRight: const Radius.circular(18),
                        ),
                        platform: TABLET),
                  )),
              Condition.largerThan(
                  name: TABLET,
                  value: CardItem(
                    textModel: TextModel(
                      alignment: Alignment.topCenter,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                    ),
                    imageModel: ImageModel(
                      imageSize: 300,
                      imageWidth: 400,
                      imageHeight: 300,
                      imageBorderRadius: BorderRadius.circular(0),
                    ),
                  )),
            ]).value,
      ),
    );
  }
}
