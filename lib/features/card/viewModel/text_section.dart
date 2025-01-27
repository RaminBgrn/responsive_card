import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/constants/responsive_size.dart';
import 'package:responsive_card/features/card/model/text_model.dart';

class TextSection extends StatelessWidget {
  final TextModel model;
  const TextSection({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: double.infinity,
      height: ResponsiveSize.getCardHeight(context) - 40,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        // vertical: 4,
      ),
      decoration: BoxDecoration(
          borderRadius: model.borderRadius,
          border: Border.all(width: 1, color: myGrey[600]!),
          color: myGrey[800]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 400),
            alignment: model.alignment!,
            child: Text(
              'فلاتــــر',
              style: GoogleFonts.vazirmatn(
                fontSize: 24,
                color: myGrey[200],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AutoSizeText(
            'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای',
            presetFontSizes: [14, 12],
            maxLines: 5,
            style: GoogleFonts.vazirmatn(
              fontSize: 14,
              color: myGrey[300],
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.justify,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'ادامه مطلب',
              style: GoogleFonts.vazirmatn(
                fontSize: 12,
                color: myOrange[600],
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
