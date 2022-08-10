// ignore_for_file: use_key_in_widget_constructors

import 'task.dart';
import 'task_tiles.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({required this.tasks});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskName: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isCompleted,
          checkifCompleted: (checkBoxState) {
            setState(() {
              widget.tasks[index].completedTask();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
