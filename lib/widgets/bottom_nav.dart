import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/provider/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});
 
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        tween: Tween(
            begin: 1, end: context.watch<HomeController>().isExpand ? 0 : 1),
        duration: Duration(milliseconds: 600),
        builder: (context, transform, child) {
          return Opacity(
            opacity: transform,
            child: SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<HomeController>().jumpToPage(0);
                            // onPageChangedHandler(0);
                          },
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Lock',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                           IconButton(
                          onPressed: () {
                            context.read<HomeController>().jumpToPage(1);
                          },
                          icon: const Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Main',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                           IconButton(
                          onPressed: () {
                            context.read<HomeController>().jumpToPage(2);
                          },
                          icon: const Icon(
                            Icons.settings,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Settings',
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ],
                )),
          );
  
        });
  }
}
