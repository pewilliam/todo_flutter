// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Colors.amber.shade100,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber.shade300, // AppBar color
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.amber.shade300, // FloatingActionButton color
        ),
      ),
    );
  }
}
