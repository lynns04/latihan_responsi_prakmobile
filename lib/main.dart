import 'package:flutter/material.dart';
import 'package:latihan_responsi_prakmobile/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Space Flight News',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

