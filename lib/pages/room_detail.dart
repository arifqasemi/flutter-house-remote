import 'package:flutter/material.dart';
import 'package:smarthome/pages/testpage.dart';
import 'package:smarthome/screens/homescreen.dart';

class RoomDetail extends StatefulWidget {
  const RoomDetail({super.key});

  @override
  State<RoomDetail> createState() => _RoomDetailState();
}

class _RoomDetailState extends State<RoomDetail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(child: OutlinedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Testpage(),));
    }, child: Text('go back',style: TextStyle(color: Colors.black),)),),);
  }
}