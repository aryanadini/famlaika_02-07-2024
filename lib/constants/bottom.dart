
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../pages/chat_view.dart';
import '../pages/home2.dart';
import '../pages/post_view.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  int _selectedIndex = 0;
  List<Widget> bottomlist = [
    Home2(),
    Chat(),
    Post(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(

        index: 0,
        items: [
          CurvedNavigationBarItem(child:
          Icon(Icons.home_outlined),label:"Home"
         ),
          CurvedNavigationBarItem(child: Icon(CupertinoIcons.chat_bubble_text),label: "Chat"),
          CurvedNavigationBarItem(child: Icon(Icons.bookmark_border_rounded),label: "Post")


        ],
        color: Colors.amber,
        buttonBackgroundColor: Colors.amber,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: bottomlist.elementAt(_selectedIndex),
      ),





    );
  }
}
// initialActiveIndex: _selectedIndex,
// onTap: _onItemTapped ,