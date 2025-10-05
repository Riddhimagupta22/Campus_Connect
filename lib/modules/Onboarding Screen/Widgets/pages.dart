import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pages extends StatelessWidget {
  const Pages({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(image, height: 303),
        Spacer(),
        Text(
          title,
          style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 23),
        ),
        Spacer(),
        Text(
          title,
          style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ],
    );
  }
}
