import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/screens/homescreen.dart';
import 'package:smarthome/theme/sh_icons.dart';
import 'package:smarthome/widgets/switcher.dart';

class Light extends StatefulWidget {
  const Light({super.key});

  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        width: 170,
        decoration: BoxDecoration(
            color: Color(0xff464D57), borderRadius: BorderRadius.circular(10)),
        child:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
            const Align(alignment: Alignment.topLeft,child:  Text('Lights', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(SHIcons.lightBulb,color: Colors.white,), Switcher(light: context.watch<HomeController>().islights,lightType: 'light',)],
              ),
            const  SizedBox(height: 10,),
              Container(height: 1,width: double.infinity,color: Color.fromARGB(255, 139, 139, 139),),
             const SizedBox(height: 5,),
          const  Align(alignment: Alignment.topLeft,child:   Text('Timer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900))),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Icon(SHIcons.timer,color: Colors.white,), Switcher(light: context.watch<HomeController>().isTimer,lightType: 'timer',)],
              ),
            ],
          ),
        ));
  }
}
