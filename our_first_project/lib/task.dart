import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String name;
  const Task(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          height: 140,
        ),
        Container(
          color: Colors.white,
          height: 100,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.black26,
              width: 72,
              height: 100,
            ),
            Text(name),
            ElevatedButton(
                onPressed: () {}, child: const Icon(Icons.arrow_drop_down))
          ]),
        ),
      ],
    );
  }
}
