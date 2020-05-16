import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> task = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(taskTitle: task[0].name, isChecked: task[0].isDone),
        TaskTile(taskTitle: task[1].name, isChecked: task[1].isDone),
        TaskTile(taskTitle: task[2].name, isChecked: task[2].isDone),
      ],
    );
  }
}
