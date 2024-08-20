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
            Task(
                'Aprender Flutter',
                'https://media.istockphoto.com/id/1416048929/pt/foto/woman-working-on-laptop-online-checking-emails-and-planning-on-the-internet-while-sitting-in.jpg?s=612x612&w=0&k=20&c=KZsArZtkHPcLekU3pRqhEoSH0cG0naA5t3jhzcSKJ2E=',
                2),
            Task(
                'Andar de Bicicleta',
                'https://media.istockphoto.com/id/1402134774/pt/foto/professional-road-cyclist-on-a-training-ride.jpg?s=612x612&w=0&k=20&c=hC9Ft96WtAoD3Tul48K-ycThtj4K8vw8DYiKfNPwz_c=',
                5),
            Task(
                'Correr 5km',
                'https://media.istockphoto.com/id/1142900322/pt/foto/happy-female-runner-jogging-in-the-morning-in-nature.jpg?s=612x612&w=0&k=20&c=k0-mnvTnlBDAV1eYSFK6E95KMoFqt3h6S7eBaWeHZCs=',
                3),
            Task(
                'Aprender Java',
                'https://media.istockphoto.com/id/1480281331/pt/foto/young-black-female-working-on-laptop-computer-in-creative-office-in-the-evening-happy.jpg?s=612x612&w=0&k=20&c=8zC-KqKjstJoX8ZmEh_e9MpCDTYE-3NPa1QkyTmwTz0=',
                4),
            Task(
                'Aprender Angular',
                'https://media.istockphoto.com/id/1434212178/pt/foto/middle-eastern-lady-using-laptop-working-online-sitting-in-office.jpg?s=612x612&w=0&k=20&c=cqKEcdL2Rb0dilodWnJf7udizXbpyv_q8EaF94YRUqQ=',
                1),
            Task(
                'Nadar duas piscinas inteiras inteiras inteiras inteiras',
                'https://media.istockphoto.com/id/465383082/pt/foto/f%C3%AAmea-nadador-na-piscina.jpg?s=612x612&w=0&k=20&c=mArUXfwj9htHjDS2bKG4VCIsbO-5j2zckwjgbZt78oM=',
                4),
            SizedBox(height: 80)
          ],
        ),
      ),
    );
  }
}
