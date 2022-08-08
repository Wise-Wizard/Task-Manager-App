// ignore_for_file: use_key_in_widget_constructors

import 'task_tiles.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTile(),
      ],
    );
  }
}
