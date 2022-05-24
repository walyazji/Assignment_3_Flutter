import 'package:flutter/material.dart';
import 'package:to_do_app/todo_app/data/tasks_data.dart';
import 'package:to_do_app/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function checkFun;
  Function reloadeWidget;
  AllTasksScreen(this.checkFun, this.reloadeWidget);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], checkFun, reloadeWidget);
        });
  }
}
