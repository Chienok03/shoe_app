import 'package:hive/hive.dart';

class toDoDatabase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box("MyBox");

  //run this method if this is 1st time opening this app
  createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercise", false]
    ];
  }

  //Load the data from the database
  loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Update the database
  updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
