import 'package:flutter/material.dart';

class WidgetStrikesBackChallenge extends StatefulWidget {
  const WidgetStrikesBackChallenge({Key? key}) : super(key: key);

  @override
  State<WidgetStrikesBackChallenge> createState() => _TaskState();
}

class _TaskState extends State<WidgetStrikesBackChallenge> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_task_rounded),
        title: const Text('Flutter: First Steps'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white10,
          child: Column(
            children: [
              groupRow(
                colorOne: const Color.fromARGB(255, 146, 77, 77),
                colorTwo: Colors.pink,
                colorThree: Colors.blue,
              ),
              groupRow(
                colorOne: Colors.pinkAccent,
                colorTwo: Colors.purple,
                colorThree: Colors.blueAccent,
              ),
              groupRow(
                colorOne: const Color.fromARGB(255, 247, 168, 194),
                colorTwo: Colors.yellow,
                colorThree: Colors.greenAccent,
              ),
              groupRow(
                colorOne: const Color.fromARGB(255, 149, 206, 179),
                colorTwo: const Color.fromARGB(255, 110, 18, 49),
                colorThree: const Color.fromARGB(255, 83, 178, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class groupRow extends StatelessWidget {
  Color colorOne = Colors.white;
  Color colorTwo = Colors.white;
  Color colorThree = Colors.white;
  groupRow({
    Key? key,
    required this.colorOne,
    required this.colorTwo,
    required this.colorThree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: colorOne,
            width: 120,
            height: 150,
          ),
          Container(
            color: colorTwo,
            width: 120,
            height: 150,
          ),
          Container(
            color: colorThree,
            width: 120,
            height: 150,
          ),
        ],
      ),
    );
  }
}
