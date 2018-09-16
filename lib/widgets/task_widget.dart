import 'package:flutter/material.dart';
import 'package:xtimer/model/task_model.dart';

class TaskWidget extends StatelessWidget{
  final Task task;
  TaskWidget({Key key, this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.black,
          width: 8.0,
          style: BorderStyle.solid
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 30.0, height: 30.0,
            decoration: BoxDecoration(
                color: task.color,
                borderRadius: BorderRadius.circular(32.0)
            ),
          ),
          Column(
            children: <Widget>[
              Text(task.title),
              Text('Duration: ${task.date.day}')
            ],
          )
        ],
      ),
    );
  }
}