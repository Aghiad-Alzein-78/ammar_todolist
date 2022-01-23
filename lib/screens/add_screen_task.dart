import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String) addTaskCallback;
  const AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              if (newTaskTitle != null) {
                addTaskCallback(newTaskTitle!);
                print(newTaskTitle);
              }
            },
            child: Text("Add"),
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white),
          ),
        ],
      ),
    );
  }
}
