import 'package:flutter/material.dart';

class MeetingScaffold extends StatelessWidget {
  const MeetingScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
