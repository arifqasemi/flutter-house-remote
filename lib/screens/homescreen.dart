import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/pages/lockpage.dart';
import 'package:smarthome/pages/mainpage.dart';
import 'package:smarthome/pages/room_detail.dart';
import 'package:smarthome/pages/settinges.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/theme/colors.dart';

class Homescreen extends StatefulWidget {
 const Homescreen({super.key});

  @override
  HomescreenState createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen> {
  final PageController _pagecontroller = PageController();
    onPageChangedHandler(int index) {
    _pagecontroller.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    // final isExpand = ref.watch(ExpandProvider);
    return Scaffold(
      // backgroundColor:Color.fromARGB(255, 255, 255, 255),
      //  appBar: AppBar(
      //   // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      //   leading: Builder(
      //     builder: (context) {
      //       return IconButton(onPressed: (){
      //         Scaffold.of(context).openDrawer();
      //       }, icon:const Icon(Icons.menu,color: Color.fromARGB(255, 0, 0, 0),));
      //     }
      //   ),
      //   actions: [IconButton(onPressed: (){}, icon:const Icon(Icons.search,color: Color.fromARGB(255, 0, 0, 0),))],
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Menu',
      //           style: TextStyle(
      //             color: SHColors.textColor,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.lock),
      //         title: const Text('Lock'),
      //         onTap: () {
      //           onPageChangedHandler(0);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text('Main'),
      //         onTap: () {
      //           onPageChangedHandler(1);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.settings),
      //         title: const Text('Settings'),
      //         onTap: () {
      //           onPageChangedHandler(2);
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      //   body: PageView(
      //   controller: _pagecontroller,
      //   children: const [Mainpage(), Lockpage(), Settinges(),RoomDetail()],
      //   onPageChanged: (value) {},
      // ),
      // bottomNavigationBar:  TweenAnimationBuilder<double>(
      //   tween: Tween(begin:1 ,end:  context.watch<HomeController>().isExpand ? 0 :1),
      //   duration: Duration(milliseconds: 600),
      //   builder: (context, transform,child) {
      //     return   Opacity(
      //           opacity: transform,
      //           child: SizedBox(
      //             height: 100,
      //             child: BottomAppBar(
      //                   color: Color.fromARGB(255, 255, 255, 255),
      //                   child: Row(
      //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                     children: [
      //                       Column(
      //                         mainAxisSize: MainAxisSize.min,
      //                         children: [
      //                           IconButton(
      //                             onPressed: () {
      //                               onPageChangedHandler(0);
      //                             },
      //                             icon: const Icon(Icons.lock,color: Colors.black,),
      //                           ),
      //                           const Text('Lock',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
      //                         ],
      //                       ),
      //                       Column(
      //                         mainAxisSize: MainAxisSize.min,
      //                         children: [
      //                           IconButton(
      //                             onPressed: () {
      //                               onPageChangedHandler(1);
      //                             },
      //                             icon: const Icon(Icons.home,color: Colors.black,),
      //                           ),
      //                           const Text('MAIN',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      //                         ],
      //                       ),
      //                       Column(
      //                         mainAxisSize: MainAxisSize.min,
      //                         children: [
      //                           IconButton(
      //                             onPressed: () {
      //                               onPageChangedHandler(2);
      //                             },
      //                             icon: const Icon(Icons.settings,color: Colors.black,),
      //                           ),
      //                           const Text('Settings',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      //                         ],
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //           ),
                  
              
            
      //     );
      //   }
      // ),
    );
  }
}
