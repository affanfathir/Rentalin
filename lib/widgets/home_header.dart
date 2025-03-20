import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "#RentalinAja",
          style: GoogleFonts.sora(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          "Cari & Sewa Kendaraan Mudah",
          style: GoogleFonts.sora(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
