import 'package:flutter/material.dart';
import 'package:project_youtube1/home/HomeScreen.dart';

import 'home/yes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: HomeScreen.route,
      routes: {
        YES.routename :(context) =>YES() ,
        HomeScreen.route : (context)=>HomeScreen()
      },
    );
  }
}

