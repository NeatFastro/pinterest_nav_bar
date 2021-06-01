import 'package:example/pages/chat_page.dart';
import 'package:example/pages/home_page.dart';
import 'package:example/pages/profile_page.dart';
import 'package:example/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_nav_bar/pinterest_nav_bar.dart';

class Pages extends StatefulWidget {
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedPageIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPageIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PinterestNavBar(
        currentIndex: selectedPageIndex,
        onTap: (i) {
          print('PinterestNavBar.onTap($i)');
          setState(() {
            selectedPageIndex = i;
          });
        },
        items: [
          Icons.home,
          Icons.search,
          Icons.chat_bubble_outline_rounded,
          Icons.person
        ],
      ),
      // bottomNavigationBar: PinterestNavBar(
      //   currentIndex: 1,
      //   onTap: (i) {
      //     print('PinterestNavBar.onTap($i)');
      //   },
      //   icons: [
      //     Icons.home,
      //     Icons.search,
      //     Icons.chat_bubble_outline_rounded,
      //     Icons.person
      //   ],
      // ),
    );
  }
}
