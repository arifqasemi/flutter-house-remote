import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/pages/detailpage.dart';
import 'package:smarthome/pages/lockpage.dart';
import 'package:smarthome/pages/room_detail.dart';
import 'package:smarthome/pages/settinges.dart';
import 'package:smarthome/provider/home.dart';
import 'package:smarthome/theme/colors.dart';
import 'package:smarthome/widgets/bottom_nav.dart';
import 'package:smarthome/widgets/light_background.dart';

class Testpage extends StatefulWidget {
  const Testpage({super.key});

  @override
  State<Testpage> createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {

  void onPageChangedHandler(int index) {
    context.read<HomeController>().jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 230, 230),
      body: Stack(
        children: [
          PageView(
            controller: context.watch<HomeController>().controller,
            children:  [Lockpage(), Settinges(), Detailpage(),RoomDetail()],
            onPageChanged: (value) {},
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              // backgroundColor: Colors.transparent,
              backgroundColor: context.watch<HomeController>().pageIndex != 2 ? Color.fromARGB(255, 230, 230, 230) : Colors.transparent,
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  );
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            
            ),
          ),
          Positioned.fill(top: null,child: BottomNav())
        
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: SHColors.textColor,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Lock'),
              onTap: () {
                onPageChangedHandler(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Main'),
              onTap: () {
                onPageChangedHandler(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                onPageChangedHandler(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


