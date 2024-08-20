import 'package:flutter/material.dart';
import 'package:flutter_application/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const defaultColor = Color.fromARGB(255, 101, 186, 187);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: defaultColor),
        useMaterial3: true,
      ),
      home: const InitialScreen(),
    );
  }
}




