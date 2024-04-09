import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
   TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //Text editing controller to get access what user typed
  TextEditingController _controller = TextEditingController();

  String textResult = "";

  void show(){
    String userName = _controller.text;
    setState(() {
     textResult = "Hello " + userName;
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(textResult),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Tìm kiếm...", border: OutlineInputBorder()),
                controller: _controller),
              ),
              ElevatedButton(onPressed: show, child: Text("Hiện"))

            ],
          )),
    ));
  }
}
