import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

abstract class SHTheme {
  static ThemeData dark = ThemeData(
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.gruppo(
        fontSize: 16,
        fontWeight: FontWeight.w800,
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
      bodyMedium: GoogleFonts.gruppo(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: SHColors.textColor,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: SHColors.textColor,
      ),
      displayLarge: GoogleFonts.buda(
        fontSize: 60,
        color: SHColors.textColor,
      ),
      displayMedium: GoogleFonts.buda(
        fontSize: 50,
        color: SHColors.textColor,
      ),
      displaySmall: GoogleFonts.buda(
        fontSize: 40,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
    appBarTheme: const  AppBarTheme(
      backgroundColor: Color.fromARGB(251, 230, 230, 230) ,
      // shadowColor: Color.fromARGB(251, 230, 230, 230),
      // color: Color.fromARGB(251, 230, 230, 230),
      elevation: 0,
      // backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black)
    ),
    iconTheme: const IconThemeData(color: SHColors.textColor),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        textStyle: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: SHColors.selectedColor,
      inactiveTrackColor: SHColors.trackColor,
      thumbColor: SHColors.selectedColor,
      trackHeight: 2,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: const IconThemeData(size: 40),
      unselectedIconTheme: const IconThemeData(size: 40),
      selectedItemColor: SHColors.hintColor,
      unselectedItemColor: SHColors.hintColor,
      selectedLabelStyle: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelStyle: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(253, 0, 0, 0),
  );
}
