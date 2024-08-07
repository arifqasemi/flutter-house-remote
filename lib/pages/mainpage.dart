import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/models/room.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/provider/store.dart';
import 'package:smarthome/theme/colors.dart';
import 'package:smarthome/widgets/room.dart';
import 'package:smarthome/widgets/slider.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  bool isExpand = false;

  void updateExpand(bool newValue) {
    setState(() {
      isExpand = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 100,
          left: 140,
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              'SELECT A ROOM',
              style: GoogleFonts.gruppo(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
        const Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SliderRoom(),
          ),
        ),
      ],
    );
  }
}
