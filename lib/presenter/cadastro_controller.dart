import 'package:flutter/material.dart';
import 'package:app_todo_lovepeople/model/repository/user_repository';
import 'package:app_todo_lovepeople/model/functions/functions.dart';

class CadastroController extends ChangeNotifier {
  final UserRepository repository;

  bool loading = false;
  CadastroController(this.repository);

  void cadastrar(String nome, String email, String senha, VoidCallback sucesso,
      VoidCallback falha) {
    _showProgress(true);
    repository.cadastrar(nome, email, senha).then((value) {
      if (value != null) {
        sucesso.call();
      } else {
        falha.call();
      }
    }).catchError((e) {
      falha.call();
    }).whenComplete(() {
      _showProgress(false);
    });
  }

  void _showProgress(bool show) {
    postFrame(() {
      loading = true;
      notifyListeners();
    });
  }
}
