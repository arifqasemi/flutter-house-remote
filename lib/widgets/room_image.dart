import 'package:flutter/material.dart';
import 'package:smarthome/models/room.dart';
import 'package:smarthome/widgets/animated_upword_arrow.dart';
import 'package:smarthome/widgets/camera_icon.dart';
import 'package:smarthome/widgets/vertical_title.dart';

class RoomImage extends StatefulWidget {
  RoomImage(
      {super.key,
      required this.title,
      required this.image,
      required this.controller});
  String title;
  String image;
  final PageController controller;

  @override
  State<RoomImage> createState() => _RoomImageState();
}

class _RoomImageState extends State<RoomImage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
        animation: widget.controller,
        builder: (context, child) {
          double pageOffset = 0;
          if (widget.controller.position.haveDimensions) {
            pageOffset = widget.controller.page! - 1;
          }
          // print(pageOffset);
          return Stack(
            
            // alignment: Alignment.centerLeft,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Container(
                    width: size.width * 0.73,
                    height: size.height * 0.53,
                    child:  Image.asset(
                          widget.image,
                          fit: BoxFit.cover,
                          alignment: Alignment(pageOffset /2.9, 0),
                        )
                      
                    ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: Container(
                  width: size.width * 0.73,
                  height: size.height * 0.53,
                  color: Color.fromARGB(105, 88, 88, 88),
                ),
              ),
             Positioned(bottom: 20,top: 10,left: 10,child: VerticalTitle(title: widget.title)),
             const Positioned(right: 10,child: CameraIconButton()),
            const Positioned(bottom: 0,left: 100,child: AnimatedUpwardArrows())
            ],
          );
        });
  }
}
