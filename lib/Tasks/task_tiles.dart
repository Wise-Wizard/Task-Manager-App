// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Task1',
        style: TextStyle(color: Color(0xFFFAEA48), fontSize: 20),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
