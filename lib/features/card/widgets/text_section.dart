import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_card/constants/custom_colors.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 12,
        children: [
          Text(
            'متن تستی',
            style: GoogleFonts.vazirmatn(fontSize: 18, color: myGrey[200]),
            textDirection: TextDirection.rtl,
          ),
          AutoSizeText(
            "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده،",
            presetFontSizes: [
              14,
              13,
              12,
            ],
            maxLines: 6,
            textAlign: TextAlign.justify,
            style: GoogleFonts.vazirmatn(
              color: myGrey[300],
            ),
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
