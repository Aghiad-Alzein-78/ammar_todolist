import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  checkboxChange(bool? newValue) {
    setState(() {
      isChecked = newValue!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Go shopping",
        style: TextStyle(
            decoration:
                !isChecked ? TextDecoration.none : TextDecoration.lineThrough),
      ),
      trailing: TaskCheckbox(isChecked, checkboxChange),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final void Function(bool?) checkBoxChange;
  TaskCheckbox(this.checkboxState, this.checkBoxChange);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.teal[400],
      value: checkboxState,
      onChanged: checkBoxChange,
    );
  }
}
