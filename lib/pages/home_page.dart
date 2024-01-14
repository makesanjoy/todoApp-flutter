import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //List of tot task
  List todoList = [
    ["make tutorial", false],
    ["make tus", true]
  ];
  //check box was tapped
  void checkedBoxChange(bool? value, int index) {
    log(value.toString());
    log(index.toString());
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }
  void createNewTask(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(taskName: todoList[index][0], taskCompleted: todoList[index][1], onChanged: (value) => checkedBoxChange(value, index));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
