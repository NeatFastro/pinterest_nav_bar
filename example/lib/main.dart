import 'package:example/pages.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_nav_bar/pinterest_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PinterestNavBarController(
      child: MaterialApp(
        title: 'Pinterest Nav Bar Example',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          accentColor: Colors.orangeAccent,
          scaffoldBackgroundColor: Colors.grey.shade100,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.orange[100],
          ),
          tabBarTheme: TabBarTheme(
            indicator: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.pinkAccent,
          scaffoldBackgroundColor: Colors.black87,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.pink[100],
          ),
          tabBarTheme: TabBarTheme(
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
          ),
        ),
        home: Pages(),
      ),
    );
  }
}
