import 'package:demochoichoi/app/data/database.dart';
import 'package:demochoichoi/app/dialog_box.dart';
import 'package:demochoichoi/app/todo_list.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  TodoApp({super.key});
  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List toDoList = [];

  //text controller
  final _controller = TextEditingController();

  checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  creatNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () {
              Navigator.of(context).pop();
            },
          );
        });
  }

  saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
            child: Text(
          "TO DO",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )),
      ),
      backgroundColor: Colors.yellow[200],
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoList(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (p0) => deleteTask(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: creatNewTask,
        backgroundColor: Colors.yellowAccent,
        child: const Icon(Icons.add, size: 40),
      ),
    );
  }
}
