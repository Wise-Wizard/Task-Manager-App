// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Task1',
        style: TextStyle(
            color: Color(0xFFFAEA48),
            fontSize: 45,
            fontWeight: FontWeight.w900),
      ),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {
  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  var isChecked;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Color(0xFF3330E4),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
