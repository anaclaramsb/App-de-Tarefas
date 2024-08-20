import 'package:flutter/material.dart';
import 'package:flutter_application/components/task.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.isTasksDisplayed,
  });

  final bool isTasksDisplayed;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isTasksDisplayed ? 1 : 0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        color: Colors.blueGrey[50],
        child: ListView(
          children: const [
            Task('Aprender Flutter', 'assets/images/mulherescrevendo1.jpg', 2),
            Task('Andar de Bicicleta', 'assets/images/bicicleta.jpg', 5),
            Task('Correr 5km', 'assets/images/corrida.jpg', 3),
            Task('Aprender Java', 'assets/images/mulherescrevendo2.jpg', 4),
            Task('Aprender Angular', 'assets/images/mulherescrevendo3.jpg', 1),
            Task('Nadar duas piscinas inteiras inteiras inteiras inteiras',
                'assets/images/natacao.jpg', 4),
            SizedBox(height: 80)
          ],
        ),
      ),
    );
  }
}
