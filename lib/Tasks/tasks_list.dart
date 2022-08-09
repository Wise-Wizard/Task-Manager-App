// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter_application_5/Screens/add_tasks_screen.dart';
import 'task.dart';
import 'task_tiles.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Mass Extinction'),
    Task(taskName: 'Type 2 Civilization')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskName: tasks[index].taskName,
          isChecked: tasks[index].isCompleted,
          checkifCompleted: (checkBoxState) {
            setState(() {
              tasks[index].completedTask();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
