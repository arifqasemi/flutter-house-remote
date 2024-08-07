import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/theme/colors.dart';

class VerticalTitle extends StatelessWidget {
   VerticalTitle({super.key,required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
        quarterTurns: -1,
        child: Text(
          title,
          style:GoogleFonts.buda(
        fontSize: 60,
        color: const Color.fromARGB(255, 255, 255, 255),
      )),
        );
  }
}
