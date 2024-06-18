import 'package:flutter/material.dart';

import 'pages/task.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const Task(),
        },
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
