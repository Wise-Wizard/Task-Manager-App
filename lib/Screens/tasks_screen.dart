// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_5/Tasks/task_tiles.dart';
import 'package:flutter_application_5/Tasks/tasks_list.dart';

class TasksScreens extends StatelessWidget {
  const TasksScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3330E4),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {},
        backgroundColor: Color(0xFF3330E4),
        child: Icon(
          Icons.add,
          size: 40,
          color: Color(0xFFFAEA48),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xFFFAEA48),
                  child: Icon(
                    Icons.access_alarm_sharp,
                    color: Color(0xFF3330E4),
                    size: 40,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Task Manager',
                  style: TextStyle(color: Color(0xFFFAEA48), fontSize: 54),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(fontSize: 25, color: Color(0xFFFAEA48)),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Color(0xFFF637EC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
