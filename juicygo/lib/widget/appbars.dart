import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbars extends StatelessWidget {
  const Appbars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'JuicyGo',
          style: GoogleFonts.aDLaMDisplay(
            textStyle: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        Container(
          height: 43,
          width: 46,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.network(
            'https://cdn-icons-png.flaticon.com/512/6858/6858485.png',
          ),
        ),
      ],
    );
  }
}
