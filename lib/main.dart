import 'package:app_todo_lovepeople/presenter/cadastro_presenter.dart';
import 'package:app_todo_lovepeople/view/login/login_page.dart';
import 'package:app_todo_lovepeople/view/cadastro/cadastro.dart';
import 'package:app_todo_lovepeople/view/nova-tarefa/nova_tarefa.dart';
import 'package:app_todo_lovepeople/view/todo_list/todo-list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/cadastro/cadastro_concluido.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CadastroUserPresenter()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: '',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(169, 1, 247, 1),
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginPage(),
            '/Cadastro': (context) => const PagCadastro(),
            '/CadConcluido': (context) => const CadastroConcluido(),
            '/TodoList': (context) => const TodoList(),
            '/NovoTodo': (context) => const NovaTarefa(),
          }),
    );
  }
}
