// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_5/Screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'Tasks/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AddTaskList(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'EBGaramond'),
        home: TasksScreens(),
      ),
    );
  }
}

class AddTaskList extends ChangeNotifier {
  List<Task> tasksList = [
    Task(taskName: 'Mass Extinction'),
    Task(taskName: 'Type 2 Civilization')
  ];

  dynamic addTask(String newTask) {
    tasksList.add(Task(taskName: newTask));
    notifyListeners();
  }

  void updateCheckBox(Task task) {
    task.completedTask();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasksList.remove(task);
    notifyListeners();
  }
}
