import 'package:flutter/material.dart';

import 'pages/task.dart';
import 'pages/task_by_date.dart';
import 'pages/habit.dart';
import 'package:pick/widgets/bottom_navbar.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Task(),
    TaskByDate(),
    Habit(),
    Habit(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
        ),
        initialRoute: '/',
        theme: ThemeData(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                iconSize: 32,
                shape: CircleBorder(),
                foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(35, 47, 86, 0.906)),
            scaffoldBackgroundColor: Color.fromRGBO(221, 222, 224, 25),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(221, 222, 224, 0),
              elevation: 0,
            ),
            appBarTheme: AppBarTheme(
                backgroundColor: Color.fromRGBO(221, 222, 224, 0))));
  }
}
