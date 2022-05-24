import 'package:flutter/material.dart';
import 'package:to_do_app/todo_app/data/tasks_data.dart';
import 'package:to_do_app/todo_app/widgets/task_widget.dart';

class CompleteTasksScreen extends StatelessWidget {
  Function checkFun;
  Function reloadeWidget;
  CompleteTasksScreen(this.checkFun, this.reloadeWidget);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList.where((element) => element.isCompleted).toList()[index],
              checkFun,
              reloadeWidget);
        });
  }
}
