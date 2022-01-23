import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks;
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = widget.tasks;
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTile: tasks[index].name,
          checkboxChange: (newValue) {
            setState(
              () {
                tasks[index].isDone = newValue!;
              },
            );
          },
        );
      },
    );
  }
}
