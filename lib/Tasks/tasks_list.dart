// ignore_for_file: use_key_in_widget_constructors

import 'package:provider/provider.dart';
import 'task_tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/main.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          deleteTask: Provider.of<AddTaskList>(context).tasksList[index],
          taskName: Provider.of<AddTaskList>(context).tasksList[index].taskName,
          isChecked:
              Provider.of<AddTaskList>(context).tasksList[index].isCompleted,
          checkifCompleted: (checkBoxState) {
            Provider.of<AddTaskList>(context, listen: false).updateCheckBox(
                Provider.of<AddTaskList>(context, listen: false)
                    .tasksList[index]);
          },
        );
      },
      itemCount: Provider.of<AddTaskList>(context).tasksList.length,
    );
  }
}
