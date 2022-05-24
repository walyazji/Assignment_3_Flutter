import 'package:flutter/material.dart';
import 'package:to_do_app/todo_app/data/tasks_data.dart';
import 'package:to_do_app/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Task task;
  Function checkFun;
  Function reloadeWidget;
  TaskWidget(this.task, this.checkFun, this.reloadeWidget);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                int index = tasksList.indexOf(task);
                tasksList.removeAt(index);
                reloadeWidget();
              },
              icon: const Icon(Icons.delete)),
          Expanded(
            child: CheckboxListTile(
              title: Text(task.title),
              value: task.isCompleted,
              onChanged: (v) {
                checkFun(task);
              },
            ),
          ),
        ],
      ),
    );
  }
}
