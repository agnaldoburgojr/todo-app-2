import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/controllers/todo.controller.dart';
import 'package:todo_app/stores/app.store.dart';
import 'package:todo_app/views/create-todo.view.dart';
import 'package:todo_app/views/widgets/nav-bar.widget.dart';
import 'package:todo_app/views/widgets/todo-list.widget.dart';
import 'package:todo_app/views/widgets/user-card.widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new TodoController(store);

    if (store.currentState == 'none') {
      controller.changeSelection('today');
    }

    return Scaffold(
      body: Column(
        children: [
          UserCard(),
          NavBar(),
          Expanded(
            child: Container(
              child: TodoList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreateTodoView(),
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
