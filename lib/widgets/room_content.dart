import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/theme/colors.dart';
import 'package:smarthome/theme/sh_icons.dart';
import 'package:smarthome/widgets/blue_light_dot.dart';

class RoomContent extends StatelessWidget {
  const RoomContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(flex: 2, child: Text('data')),
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    SHIcons.thermostat,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Temperature',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: AutofillHints.birthdayYear,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Text(
                '20.0°',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    SHIcons.waterDrop,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Air Humidity',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: AutofillHints.birthdayYear,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Text(
                '20.0' + '\u2105',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    SHIcons.timer,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Timer',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: AutofillHints.birthdayYear,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  const BlueLightDot(),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'OFF',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          height: 1,
        ),

        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    SHIcons.lightBulbOutline,
                    color: Colors.white,
                  ),
                  const Text(
                    'Ligths',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Off',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.fan,
                    color: Colors.white,
                  ),
                  const Text(
                    'Air Conditioning',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Off',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Icon(
                    SHIcons.music,
                    color: Colors.white,
                  ),
                  const Text(
                    'Music',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Off',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        ),
        // Spacer()
      ],
    );
  }
}
