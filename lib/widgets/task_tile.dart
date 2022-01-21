import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Go shopping"),
      trailing: Checkbox(value: false, onChanged: (_) {}),
    );
  }
}
