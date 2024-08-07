import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/widgets/air_condition.dart';
import 'package:smarthome/widgets/blured_image.dart';
import 'package:smarthome/widgets/light.dart';
import 'package:smarthome/widgets/ligth_intensity.dart';
import 'package:smarthome/widgets/music.dart';
import 'package:smarthome/widgets/test.dart';

class Detailpage extends StatefulWidget {
   Detailpage({super.key});
  

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage>  {

  Widget build(BuildContext context) {
    return  Hero(
      tag: Random.secure(),
      child: Stack(children: [
              const Positioned.fill(
                child: BluredImage(),
              ),
              Positioned(
                top: 40,
                left: 140,
                child: Column(
                  children: [
                    Text(
                      'DINING',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      'ROOM',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const Text(
                      'SETINGS',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              Positioned(
                  top: 160,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      context.read<HomeController>().jumpToPage(0);
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  )),
              TweenAnimationBuilder<double>(
                tween: Tween(begin: 270,end: 200),
                duration: Duration(milliseconds: 600),
                builder: (context, transform,child) {
                  return Positioned(
                     top: transform,
                     right: 20,
                     left: 20,
                    child: Container(
                        width: MediaQuery.of(context).size.width - 40,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [Light(), Music()],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              LigthIntensity(),
                              const SizedBox(
                                height: 20,
                              ),
                              const AirCondition(),
                              const  SizedBox(height: 110,)
                            ],
                          ),
                      ),
                    
                    );
                }
              ),
            ]),
    );
        
      
  
  }
}
