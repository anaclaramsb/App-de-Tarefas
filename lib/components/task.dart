import 'package:flutter/material.dart';
import 'package:flutter_application/components/difficulty.dart';

class Task extends StatefulWidget {
  final String nomeDaTarefa;
  final String imagem;
  final int dificuldade;
  const Task(this.nomeDaTarefa, this.imagem, this.dificuldade, {super.key});
  static const defaultColor = Color.fromARGB(255, 101, 186, 187);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  var nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4)),
                color: Colors.white),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey[200],
                  width: 72,
                  height: 100,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(4)),
                    child: Image.asset(
                      widget.imagem,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 200,
                        child: Text(widget.nomeDaTarefa,
                            style: const TextStyle(
                                fontSize: 20,
                                overflow: TextOverflow.ellipsis))),
                    Difficulty(widget: widget, difficultyLevel: widget.dificuldade)
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                      onPressed: nivel == 10
                          ? null
                          : () {
                              setState(() {
                                if (nivel != 10) nivel++;
                              });
                            },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Task.defaultColor,
                          foregroundColor: Colors.white,
                          fixedSize: const Size(60, 60),
                          padding: const EdgeInsets.all(0)),
                      child: Builder(builder: (context) {
                        if (nivel != 10) {
                          return const Column(
                            children: [
                              Icon(Icons.arrow_drop_up),
                              Text('Lvl Up')
                            ],
                          );
                        } else {
                          return Text('MAX');
                        }
                      })),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4)),
                color: Task.defaultColor),
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      width: 220,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel / 10,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'Nível: $nivel/10',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

