import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/models/room.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/widgets/room.dart';

class SliderRoom extends StatefulWidget {
  const SliderRoom({super.key});

  @override
  State<SliderRoom> createState() => _SliderRoomState();
}

class _SliderRoomState extends State<SliderRoom> {
   bool isExpand =false;

    void updateExpand(bool newVlau){
      setState(() {
        isExpand =newVlau;
      });
      
    }
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 600),
      tween: Tween(begin: 0.8, end: context.watch<HomeController>().isExpand ? 0.9 : 0.83 ),
      builder: (context, transform,child) {
         final PageController pageController = PageController(viewportFraction: transform);
        return PageView.builder(
            controller: pageController,
            itemCount: roomsList.length,
            itemBuilder: (context, index) {
              return  Room(roomIndex: index,controller: pageController,);
            },
          // ),
        );
      }
    );;
  }
}