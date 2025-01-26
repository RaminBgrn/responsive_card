import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_card/constants/custom_colors.dart';
import 'package:responsive_card/features/card/card_item.dart';

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
        child: CardItem(),
      ),
    );
  }
}
