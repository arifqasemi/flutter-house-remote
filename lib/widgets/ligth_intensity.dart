import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/theme/sh_icons.dart';
import 'package:smarthome/widgets/switcher.dart';

class LigthIntensity extends StatefulWidget {
  LigthIntensity({super.key});

  @override
  State<LigthIntensity> createState() => _LigthIntensityState();
}

class _LigthIntensityState extends State<LigthIntensity> {
  double _currentIntensity = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: 365,
        decoration: BoxDecoration(
            color: Color(0xff464D57), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('Light intensity',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
                    ),
                  ),
                const  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '20%',
                        style:TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Switcher(light: context.watch<HomeController>().islightsIntensity,lightType: 'lightIntens',),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: const Color.fromARGB(255, 176, 176, 176),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(SHIcons.lightMin,color: Colors.white,),
                  Slider(
                    inactiveColor: Color.fromARGB(255, 0, 0, 0),
                    activeColor: Color.fromARGB(255, 192, 192, 192),
                    value: _currentIntensity,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: _currentIntensity.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentIntensity = value;
                      });
                    },
                  ),
                  const Icon(SHIcons.lightMax,color: Colors.white,)
                ],
              ),
            ],
          ),
        ));
  }
}
