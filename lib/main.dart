import 'package:flutter/material.dart';
import 'package:smacty/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
          scaffoldBackgroundColor:
              Colors.amber //Color.fromARGB(255, 21, 31, 63),
          ),
    );
  }
}
