import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkboxChange;
  TaskTile({
    required this.isChecked,
    required this.taskTile,
    required this.checkboxChange,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration:
                !isChecked ? TextDecoration.none : TextDecoration.lineThrough),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange,
        // onChanged: checkBoxChange,
      ),
    );
  }
}
