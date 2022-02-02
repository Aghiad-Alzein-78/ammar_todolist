import 'package:flutter/material.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go Shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Repair the car'),
    Task(name: 'Walk the cat'),
  ];
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
