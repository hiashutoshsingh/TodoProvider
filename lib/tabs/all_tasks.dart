import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/screen/TaskList.dart';
import 'package:todoprovider/providers/todos_model.dart';

class AllTaskTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.allTasks,
        ),
      ),
    );
  }
}
