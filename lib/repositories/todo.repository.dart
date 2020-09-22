import 'dart:io';

import 'package:dio/dio.dart';
import 'package:todo_app/models/todo-item.model.dart';

import '../user.dart';

class TodoRepository {
  Future<List<TodoItem>> getTodayTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: '123455',
        title: 'Estudar Flutter',
        done: true,
        date: DateTime.now(),
      ),
    );
    todos.add(
      new TodoItem(
        id: '123456',
        title: 'Fazer compras',
        done: false,
        date: DateTime.now(),
      ),
    );
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;
  }

  Future<List<TodoItem>> getTomorrowTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: '123457',
        title: 'Treinar',
        done: false,
        date: DateTime.now(),
      ),
    );
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;
  }

  Future<List<TodoItem>> getAllTodos() async {
    var todos = new List<TodoItem>();
    todos.add(
      new TodoItem(
        id: '123455',
        title: 'Estudar Flutter',
        done: true,
        date: DateTime.now(),
      ),
    );
    todos.add(
      new TodoItem(
        id: '123456',
        title: 'Fazer compras',
        done: false,
        date: DateTime.now(),
      ),
    );

    todos.add(
      new TodoItem(
        id: '123457',
        title: 'Treinar',
        done: false,
        date: DateTime.now(),
      ),
    );
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    return todos;
  }

  Future<TodoItem> add(TodoItem item) async {
    // var url = "https://10.0.2.2:5001/v1/todos";

    // try {
    //   Response response = await Dio().post(
    //     url,
    //     data: item,
    //     options: Options(
    //       headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
    //     ),
    //   );
    //   return TodoItem.fromJson(response.data['data']);
    // } catch (e) {
    //   return null;
    // }
  }

  Future<TodoItem> markAsDone(TodoItem item) async {
    // var url = "https://10.0.2.2:5001/v1/todos/mark-as-done";

    // try {
    //   Response response = await Dio().put(
    //     url,
    //     data: item,
    //     options: Options(
    //       headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
    //     ),
    //   );
    //   return TodoItem.fromJson(response.data['data']);
    // } catch (e) {
    //   return null;
    // }
  }
}

// Code example using DIO to do requests an localhost API

// var urlToday = 'https://10.0.2.2:5001/v1/todos/undone/today';
// var urlTomorrow = 'https://10.0.2.2:5001/v1/todos/undone/today';
// var urlAll = 'https://10.0.2.2:5001/v1/todos/undone/today';
// Future<List<TodoItem>> getTodayTodos() async {
//   var url = urlToday;
//   Response response = await Dio().get(
//     url,
//     options: Options(
//       headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
//    ),
//  );

//  return (response.data as List)
//     .map((todos) => TodoItem.fromJson(todos))
//     .toList();
// }
