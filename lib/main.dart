import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Yeh line Flutter me status bar (upar wali strip jahan time,
    // battery hoti hai) ko control karne ke liye use hoti hai 👍
    SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)// status bar color chnge
    );
    return MaterialApp(
      title: 'ToDo App',

      debugShowCheckedModeBanner: false,

      home: Home(),
    );
  }
}

