import 'package:design/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        secondaryHeaderColor:Color(0xFFD8ECF1),

        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}