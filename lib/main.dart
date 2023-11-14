import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(58, 66, 86, 0.7),
        title: const Text(
          'To Do App',
          style: TextStyle(
              fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...allTasks.map((item) => Todocard(vartitle: item.title)),
          ],
        ),
      ),
    );
  }
}

class Task {
  String title;
  bool status;
  Task({required this.status, required this.title});
}

List allTasks = [
  Task(title: "Publish video", status: false),
  Task(title: "Laugh louder", status: true),
  Task(title: "GEM", status: false),
];
