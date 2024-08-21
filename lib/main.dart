import 'package:flutter/material.dart';
import 'package:home_screen/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = 'Flutter Demo';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
        fontFamily: 'Mundial',
      ),
      home: const HomePage(title: title),
    );
  }
}