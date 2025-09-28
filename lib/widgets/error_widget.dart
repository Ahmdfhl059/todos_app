import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todos_app/bloc/todos_bloc.dart';
import 'package:todos_app/cubit/todos_cubit.dart';

class MyErrorWidget extends StatelessWidget {
  final String message;
  const MyErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Text(
              message,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // BlocProvider.of<TodosBloc>(context).add(GetAllTodosEvent());
              BlocProvider.of<TodosCubit>(context).GetAllTodos();
            },
            child: Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
