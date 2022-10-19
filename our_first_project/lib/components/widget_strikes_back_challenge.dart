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
        leading: const Icon(Icons.add_task_rounded),
        title: const Text('Flutter: First Steps'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white10,
          child: ListView(
            children: [
              GroupRow(
                colorOne: const Color.fromARGB(255, 146, 77, 77),
                colorTwo: Colors.pink,
                colorThree: Colors.blue,
              ),
              GroupRow(
                colorOne: Colors.pinkAccent,
                colorTwo: Colors.purple,
                colorThree: Colors.blueAccent,
              ),
              GroupRow(
                colorOne: const Color.fromARGB(255, 247, 168, 194),
                colorTwo: Colors.yellow,
                colorThree: Colors.greenAccent,
              ),
              GroupRow(
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

// ignore: must_be_immutable
class GroupRow extends StatelessWidget {
  Color colorOne = Colors.white;
  Color colorTwo = Colors.white;
  Color colorThree = Colors.white;
  GroupRow({
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
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(25),
              color: colorOne,
            ),
            width: 120,
            height: 150,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  color: colorTwo,
                ),
                width: 120,
                height: 150,
              ),
              const Icon(Icons.person),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(25),
              color: colorThree,
            ),
            width: 120,
            height: 150,
          ),
        ],
      ),
    );
  }
}
