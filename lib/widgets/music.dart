import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/theme/colors.dart';
import 'package:smarthome/theme/sh_icons.dart';
import 'package:smarthome/widgets/switcher.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 170,
        width: 170,
        decoration: BoxDecoration(
            color: Color(0xff464D57), borderRadius: BorderRadius.circular(10)),
        child:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
            const Align(alignment: Alignment.topLeft,child: const Text('Music', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(SHIcons.music,color: Colors.white,), Switcher(light: context.watch<HomeController>().isMusic,lightType: 'music',)],
              ),
              SizedBox(height: 10,),
              Container(height: 1,width: double.infinity,color: Color.fromARGB(255, 137, 137, 137),),
              SizedBox(height: 5,),
                 const Text(
              'I want to be your...',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 4),
            Text(
              'MANESKIN',
              style: GoogleFonts.montserrat(
                color: SHColors.selectedColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Flexible(child: Icon(Icons.fast_rewind,color: Colors.white,)),
                   SizedBox(width: 8),
                  Flexible(
                    child:   Icon(Icons.play_arrow,color: Colors.white,),
                  ),
                   SizedBox(width: 8),
                   Flexible(child: Icon(Icons.fast_forward,color: Colors.white,)),
                ],
              ),
            ],
          ),
        ));
  }
}