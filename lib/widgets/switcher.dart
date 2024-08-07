import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/theme/colors.dart';

class Switcher extends StatefulWidget {
   Switcher({super.key,required this.light,required this.lightType});
  bool light;
  String lightType;

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  // bool light = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          // This bool value toggles the switch.
          value: widget.light,
          activeColor: const Color.fromARGB(255, 255, 255, 255),
          inactiveTrackColor: SHColors.trackColor,
          // inactiveTrackColor: Colors.red,
          activeTrackColor: SHColors.trackColor,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              if(widget.lightType =='timer'){
                print(widget.lightType);
                context.read<HomeController>().roomController('timer');
              }
              if(widget.lightType =='music'){
                context.read<HomeController>().roomController('music');
              }
              if(widget.lightType =='lightIntens'){
                context.read<HomeController>().roomController('lightIntens');
              }
              if(widget.lightType =='light'){
                context.read<HomeController>().roomController('light');
              }
              if(widget.lightType =='aircondition'){
                context.read<HomeController>().roomController('aircondition');
                  print(widget.lightType);
              }
            });
          },
        ),
        Text(widget.light ? 'ON':'OFF',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w900),)
      ],
    );
  }
}