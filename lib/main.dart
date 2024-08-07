import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/pages/testpage.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/screens/homescreen.dart';
import 'package:smarthome/theme/sh_them.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    
    ChangeNotifierProvider(
      create: (context) => HomeController(),
      child: MyApp(),
    ),
    
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: SHTheme.dark,
      home: const Testpage(),
    );
  }
}
