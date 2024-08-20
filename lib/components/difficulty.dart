import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/components/task.dart';

class Difficulty extends StatelessWidget {
  const Difficulty({
    required this.difficultyLevel,
    super.key,
    required this.widget,
  });

  final int difficultyLevel;
  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
                              children: [
    Icon(
        widget.dificuldade > 0
            ? Icons.star
            : Icons.star_border,
        color: difficultyLevel > 0
            ? MyApp.defaultColor
            : Colors.black,
        size: 15),
    Icon(
        difficultyLevel > 1
            ? Icons.star
            : Icons.star_border,
        color: MyApp.defaultColor,
        size: 15),
    Icon(
        difficultyLevel > 2
            ? Icons.star
            : Icons.star_border,
        color: MyApp.defaultColor,
        size: 15),
    Icon(
       difficultyLevel > 3
            ? Icons.star
            : Icons.star_border,
        color: MyApp.defaultColor,
        size: 15),
    Icon(
        difficultyLevel > 4
            ? Icons.star
            : Icons.star_border,
        color: MyApp.defaultColor,
        size: 15),
                              ],
                            );
  }
}
