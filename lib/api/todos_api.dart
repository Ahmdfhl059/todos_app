import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todos_app/models/todos_model.dart';

class TodosApi {
  Future<List<Todo>> getAllTodos() async {
    try {
      String url = "https://jsonplaceholder.com/todos";
      var response = await http.get(Uri.parse(url));

      List<Todo> todos = (json.decode(
        response.body,
      )).map<Todo>((jsonTodo) => Todo.fromJson(jsonTodo)).toList();
      return todos;
    } catch (e) {
      rethrow;
    }
  }
}
