import 'package:flutter/material.dart';
import 'package:todo_app_ammar/models/task_data.dart';
import './task_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTile: taskData.tasks[index].name,
              checkboxChange: (_) {
                taskData.updateTask(taskData.tasks[index]);
              },
              deleteTask: () => taskData.deleteTask(taskData.tasks[index]),
            );
          },
        );
      },
    );
  }
}
