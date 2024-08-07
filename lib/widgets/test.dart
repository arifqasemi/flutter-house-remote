import 'package:flutter/material.dart';
import 'package:smarthome/widgets/light.dart';
import 'package:smarthome/widgets/ligth_intensity.dart';
import 'package:smarthome/widgets/music.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Light(), Music()],
        ),
        const SizedBox(height: 20,),
        LigthIntensity()
      ],
    );
  }
}
