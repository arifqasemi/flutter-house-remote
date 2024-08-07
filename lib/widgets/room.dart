import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/models/room.dart';
import 'package:smarthome/pages/room_detail.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/widgets/room_content.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:smarthome/provider/store.dart';
import 'package:smarthome/widgets/room_image.dart';

class Room extends StatefulWidget {
  Room({super.key, required this.roomIndex, required this.controller});
  int roomIndex;
   PageController controller;

  @override
  RoomState createState() => RoomState();
}

class RoomState extends State<Room> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        TweenAnimationBuilder<Matrix4>(
          curve: Curves.fastOutSlowIn,
          tween: Matrix4Tween(
              begin: Matrix4.translationValues(0, 0, 0),
              end: Matrix4.translationValues(0, isExpand ? 120 : 0, 0)),
          duration: Duration(milliseconds: 600),
          builder: (context, transform, child) {
            return Transform(
              transform: transform,
              child: TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 600),
                tween: Tween<double>(
                  begin: size.width * 0.64,
                  end: isExpand ? size.width * 0.85 : size.width * 0.64,
                ),
                builder: (context, transform, child) {
                  return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: transform,
                      height: isExpand ? size.height * 0.55 : size.height * 0.5,
                      color: const Color(0xff464D57),
                      child: RoomContent(),
                    ),
                  );
                },
              ),
            );
          },
        ),
        TweenAnimationBuilder<Matrix4>(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 600),
          tween: Matrix4Tween(
              begin: Matrix4.translationValues(0, 0, 0),
              end: Matrix4.translationValues(0, isExpand ? -100 : 0, 0)),
          builder: (context, transform, child) {
            return Transform(
              transform: transform,
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  setState(() {
                    if (details.primaryDelta! < 0) {
                      isExpand = true;
                      context.read<HomeController>().updateExpand(true);
                    }
                    if (details.primaryDelta! > 0) {
                      isExpand = false;
                      context.read<HomeController>().updateExpand(false);
                    }
                  });
                },
                child: RoomImage(
                  title: roomsList[widget.roomIndex].title,
                  image: roomsList[widget.roomIndex].image,
                  controller:widget.controller,
                ),
                onDoubleTap: () {
                  context.read<HomeController>().jumpToPage(2);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
