import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_app/api/todos_api.dart';
import 'package:todos_app/cubit/todos_cubit.dart';
import 'package:todos_app/pages/todos_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  
    BlocProvider(
      create: (context) => TodosCubit(todosApi: TodosApi())..GetAllTodos(),
      child: MaterialApp(home: TodosPage()),
    );
    
    // BlocProvider(
    //   create: (context) => TodosBloc(todosApi: TodosApi())..add(GetAllTodosEvent()),
    //   child: MaterialApp(home: TodosPage()),
    // );
  }
}
