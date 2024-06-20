import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  // run if it's first time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Tarefa 1", false],
      ["Tarefa 2", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateData() {
    _mybox.put("TODOLIST", toDoList);
  }
}
