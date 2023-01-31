import 'package:brain_bite/utils/styles.dart';
import 'package:brain_bite/views/bottom_bar_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Woohoo!',
      home: const BottomBar(),
      theme: ThemeData(
        primaryColor: primary,
      ),
    );
  }
}
