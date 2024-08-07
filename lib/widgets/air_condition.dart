import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/theme/colors.dart';
import 'package:smarthome/theme/sh_icons.dart';
import 'package:smarthome/widgets/switcher.dart';

class AirCondition extends StatefulWidget {
  const AirCondition({super.key});

  @override
  State<AirCondition> createState() => _AirConditionState();
}

class _AirConditionState extends State<AirCondition> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        width: 365,
        decoration: BoxDecoration(
            color: Color(0xff464D57), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
            const Align(
              alignment: Alignment.topLeft,
               child: const Text('Air Conditioning',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900)),
             ),
               Row(
                children: [
                const  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: FaIcon(
                      FontAwesomeIcons.fan,
                      color: Colors.white,
                    ),
                  ),
             const  SizedBox(
                    width: 20,
                  ),
                  Switcher(light: context.watch<HomeController>().isAirConidtion,lightType: 'aircondition',),
             const SizedBox(
                    width: 20,
                  ),
                  // Text('OFF'),
                const  SizedBox(
                    width: 150,
                  ),
                const  Text(
                    '10°',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Color.fromARGB(255, 145, 145, 145),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      SHIcons.snowFlake,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      SHIcons.wind,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      SHIcons.waterDrop,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(SHIcons.timer,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Color.fromARGB(255, 141, 141, 141),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        width: 10,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        SHIcons.waterDrop,
                        color: Color.fromARGB(245, 255, 255, 255),
                        size: 20,
                      ),
                      Text(
                        'Air humidity',
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '33',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
