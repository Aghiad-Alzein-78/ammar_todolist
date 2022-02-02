import 'package:flutter/material.dart';
import './task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Go Shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Repair the car'),
    Task(name: 'Walk the cat'),
  ];
}
