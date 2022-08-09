// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddTasks extends StatelessWidget {
  const AddTasks({Key? key}) : super(key: key);

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
            cursorWidth: 10,
            cursorColor: Color(0xFFFAEA48),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          FlatButton(
            color: Color(0xFFF637EC),
            onPressed: (() {}),
            child: Text(
              'ADD',
              style: TextStyle(
                color: Color(0xFFFAEA48),
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
