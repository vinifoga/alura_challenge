import 'package:flutter/material.dart';
import 'package:our_first_project/components/task.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({Key? key}) : super(key: key);

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  bool taskOpacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tasks'),
      ),
      body: AnimatedOpacity(
        opacity: taskOpacity ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Task('Aprender Flutter', 'assets/images/dash.png', 3),
            const Task('Andar de Bike', 'assets/images/bike.jpg', 2),
            const Task('Meditar', 'assets/images/meditation.jpeg', 5),
            const Task('Ler', 'assets/images/book.jpg', 4),
            const Task('Jogar', 'assets/images/play.jpg', 1),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            taskOpacity = !taskOpacity;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
