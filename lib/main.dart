import 'package:flutter/material.dart';
import 'package:shopping_cart_app/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //removing debugg banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreen(),
    );
  }
}
