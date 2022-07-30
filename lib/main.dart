
import 'package:app_todo_lovepeople/view/login/login_page.dart';
import 'package:app_todo_lovepeople/view/cadastro/cadastro.dart';
import 'package:app_todo_lovepeople/view/nova-tarefa/nova_tarefa.dart';
import 'package:app_todo_lovepeople/view/todo_list/todo-list.dart';
import 'package:flutter/material.dart';
import 'view/cadastro/cadastro_concluido.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(169, 1, 247, 1),
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/':(context) => LoginPage(),
        '/Cadastro':(context) => PagCadastro(),
        '/CadConcluido':(context) => CadastroConcluido(),
        '/TodoList':(context) => TodoList(),
        '/NovoTodo':(context) => NovaTarefa()
      }

    );
  }
}
