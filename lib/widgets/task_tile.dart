import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkboxChange;
  final Function() deleteTask;
  TaskTile(
      {required this.isChecked,
      required this.taskTile,
      required this.checkboxChange,
      required this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTile,
          style: TextStyle(
              decoration: !isChecked
                  ? TextDecoration.none
                  : TextDecoration.lineThrough),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              activeColor: Colors.teal[400],
              value: isChecked,
              onChanged: checkboxChange,
              // onChanged: checkBoxChange,
            ),
            IconButton(
              onPressed: () {
                deleteTask();
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red[800],
              ),
            ),
          ],
        ));
  }
}
