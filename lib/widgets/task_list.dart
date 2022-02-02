import 'package:flutter/material.dart';
import 'package:todo_app_ammar/models/task_data.dart';
import './task_tile.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          taskTile: Provider.of<TaskData>(context).tasks[index].name,
          checkboxChange: (newValue) {
            // setState(
            //   () {
            //     tasks[index].isDone = newValue!;
            //   },
            // );
          },
        );
      },
    );
  }
}
