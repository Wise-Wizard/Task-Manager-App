// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_5/Tasks/task.dart';
import 'package:flutter_application_5/main.dart';
import 'package:provider/provider.dart';

class TasksTile extends StatelessWidget {
  final Task deleteTask;
  final String taskName;
  final bool isChecked;
  final void Function(bool?) checkifCompleted;
  TasksTile({
    required this.deleteTask,
    required this.taskName,
    required this.isChecked,
    required this.checkifCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Provider.of<AddTaskList>(context, listen: false).deleteTask(deleteTask);
      },
      child: ListTile(
        title: Text(
          taskName,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
              color: Color(0xFF3330E4),
              fontSize: 40,
              fontWeight: FontWeight.w900),
        ),
        trailing: Transform.scale(
          scale: 2,
          child: Checkbox(
            checkColor: Color(0xFFFAEA48),
            activeColor: Color(0xFF3330E4),
            value: isChecked,
            onChanged: checkifCompleted,
          ),
        ),
      ),
    );
  }
}
