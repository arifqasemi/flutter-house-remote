import 'dart:ui';

import 'package:flutter/material.dart';

class BluredImage extends StatelessWidget {
  const BluredImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image:  ExactAssetImage('assets/images/0.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child:  BackdropFilter(
          filter:  ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child:  Container(
            decoration:  BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
      ));
  }
}