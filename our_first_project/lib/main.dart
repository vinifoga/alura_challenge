import 'package:flutter/material.dart';
import 'task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Tasks'),
            ),
            body: ListView(
              children: const [
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
                Task('Aprendendo Flutter'),
              ],
            )));
  }
}
