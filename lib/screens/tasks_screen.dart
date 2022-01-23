import 'package:flutter/material.dart';
import '../screens/add_screen_task.dart';
import '../widgets/task_list.dart';
import '../models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: 'Go Shopping'),
    Task(name: 'Buy a gift'),
    Task(name: 'Repair the car'),
    Task(name: 'Walk the cat'),
  ];
  void addToTasks(String taskName) {
    tasks.add(
      Task(name: taskName),
    );
    Navigator.pop(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ToDayDo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              tasks.length == 1
                  ? "${tasks.length} Task"
                  : "${tasks.length} Tasks",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TasksList(
                  tasks,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[400],
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(
                      addToTasks,
                    ),
                  ),
                );
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
