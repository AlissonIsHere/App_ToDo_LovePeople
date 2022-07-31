import 'package:app_todo_lovepeople/model/login_model.dart';
import 'package:app_todo_lovepeople/model/model_geral.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CadastroUserPresenter extends ChangeNotifier {
  final api = TodoApi();

  Login? login;
  bool carregar = false;

  void obterLogin(String email, String senha, String nome, VoidCallback sucesso,
      VoidCallback falhou) {
    api.register(email, nome, senha).then((value) async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('jwt', '${value?.jwt}');
      sucesso();
    }).onError((error, _) {
      falhou();
    });
  }

  Future<bool> vereficacaoToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('jwt') != null) {
      return true;
    } else {
      return false;
    }
  }
}
