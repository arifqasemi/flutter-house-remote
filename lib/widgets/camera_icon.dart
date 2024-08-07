import 'package:flutter/material.dart';
import 'package:smarthome/theme/colors.dart';
import 'package:smarthome/theme/sh_icons.dart';

class CameraIconButton extends StatelessWidget {
  const CameraIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
          onPressed: () {},
          icon: const Icon(
            SHIcons.camera,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        
    );
  }
}