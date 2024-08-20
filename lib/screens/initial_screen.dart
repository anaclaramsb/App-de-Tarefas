import 'package:flutter/material.dart';
import 'package:flutter_application/components/body.dart';
import 'package:flutter_application/main.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool isTasksDisplayed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Tarefas',
            selectionColor: Colors.white,
          ),
          backgroundColor: MyApp.defaultColor,
        ),
        body: Body(isTasksDisplayed: isTasksDisplayed),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isTasksDisplayed = !isTasksDisplayed;
          });
        },
        backgroundColor: MyApp.defaultColor,
        child: const Icon(
          Icons.remove_red_eye,
          color: Colors.white,
        ),
      ),
      );
  }
}