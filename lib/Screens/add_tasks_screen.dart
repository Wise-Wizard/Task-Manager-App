// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_5/main.dart';
import 'package:provider/provider.dart';

class AddTasks extends StatelessWidget {
  String newTask = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 45,
              color: Color(0xFFFAEA48),
            ),
          ),
          TextField(
            style: TextStyle(fontSize: 30, color: Color(0xFFFAEA48)),
            cursorWidth: 10,
            cursorColor: Color(0xFFFAEA48),
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTask = value;
            },
          ),
          SizedBox(height: 30),
          FlatButton(
            color: Color(0xFFF637EC),
            onPressed: (() {
              Provider.of<AddTaskList>(context, listen: false).addTask(newTask);
              Navigator.pop(context);
            }),
            child: Text(
              'ADD',
              style: TextStyle(
                color: Color(0xFF3330E4),
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
