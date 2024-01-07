import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  Constants._();

  static TextStyle appFontlight =
      GoogleFonts.roboto().copyWith(color: const Color(0xFF4D4C4C));
  static TextStyle appFontdark =
      GoogleFonts.roboto().copyWith(color: const Color(0xFFFFFFFF));

  static Color navBarIconColorlight = const Color.fromARGB(255, 107, 99, 99);
  static Color navBarIconColordark = const Color.fromARGB(255, 255, 255, 255);
  static Color SeatTakenColor = const Color.fromARGB(255, 243, 198, 198);
  static Color seatSelectedColor = const Color(0xFFEF5B6B);
  static Color seatblankColor = Colors.grey;
}
