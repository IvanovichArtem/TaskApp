import 'package:flutter/material.dart';

import 'pages/task.dart';
import 'pages/task_by_date.dart';
import 'pages/habit.dart';
import 'pages/matrix.dart';
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
    Matrix(),
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
            splashFactory: NoSplash.splashFactory,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                iconSize: 32,
                shape: CircleBorder(),
                foregroundColor: Colors.white,
                backgroundColor: Color.fromRGBO(35, 47, 86, 0.906)),
            scaffoldBackgroundColor: Color.fromRGBO(221, 222, 224, 1),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(221, 222, 224, 1),
              elevation: 0,
              type: BottomNavigationBarType.fixed,
            ),
            appBarTheme: AppBarTheme(
                backgroundColor: Color.fromRGBO(221, 222, 224, 1))));
  }
}
