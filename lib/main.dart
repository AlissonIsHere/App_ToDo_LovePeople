
import 'package:app_todo_lovepeople/view/login_page.dart';
import 'package:app_todo_lovepeople/view/cadastro/cadastro.dart';
import 'package:app_todo_lovepeople/view/nova-tarefa/nova_tarefa.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      

    );
  }
}
