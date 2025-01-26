import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/features/card/view/card_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Responsive Card',
          style: GoogleFonts.lato(
            fontSize: 16,
            color: myGrey[600],
          ),
        ),
      ),
      body: Center(
        child: CardItem(),
      ),
    );
  }
}
