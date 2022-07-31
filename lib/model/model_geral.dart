import 'dart:convert';
import 'package:app_todo_lovepeople/model/cadastro_todo_model.dart';
import 'package:app_todo_lovepeople/model/cadrasto_model.dart';
import 'package:app_todo_lovepeople/model/excluir_todo_mode.dart';
import 'package:app_todo_lovepeople/model/lista_model.dart';
import 'package:app_todo_lovepeople/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

//Criando as Api por model
class TodoApi {
  String token = '';

  bool isLoading = true;

  //Api do Login
  Future<Login?> login(String email, String senha) async {
    var url = Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local');
    var response = await http.post(
      url,
      body: {
        'identifier': email,
        'password': senha,
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Login resp = Login.fromJson(json);
      token = resp.jwt!;
      return resp;
    }
    return null;
  }

  //Api Cadastro Usuario
  Future<CadastroUser?> register(
      String email, String nome, String senha) async {
    var url =
        Uri.parse('https://todo-lovepeople.herokuapp.com/auth/local/register');
    var response = await http.post(
      url,
      body: {
        'username': nome,
        'email': email,
        'password': senha,
      },
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Login resp = Login.fromJson(json);
      token = resp.jwt!;
    }
    return null;
  }

  //Api Lista
  Future<List<ListaToDo>> listaTarefas() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? jwt = sharedPreferences.getString('jwt');
    var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
    var response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
    );
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);

      return json.map<ListaToDo>((value) {
        return ListaToDo.fromJson(value);
      }).toList();
    } else {
      return [];
    }
  }
  
  //Incluir a Lista
  Future registerTodo(String titulo, String descricao, String cor) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? jwt = sharedPreferences.getString('jwt');
    var url = Uri.parse('https://todo-lovepeople.herokuapp.com/todos');
    var response = await http.post(url, headers: {
      'Authorization': 'Bearer $jwt',
    }, body: {
      'title': titulo,
      'description': descricao,
      'color': cor,
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      CadastroToDo resp = CadastroToDo.fromJson(json);
      return resp;
    }
  }
}

//Deletar objeto Lista
class DeleteItem {
  Future<ExcluirToDo?> deletarTodo(int? idTodo) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? jwt = sharedPreferences.getString('jwt');
    var url =
        Uri.parse('https://todo-lovepeople.herokuapp.com/todos/${idTodo}');
    Map<String, String> headers = {
      'Authorization': 'Bearer $jwt',
    };
    return http.delete(url, headers: headers).then((response) async {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        return ExcluirToDo.fromJson(json);
      } else {
        return null;
      }
    });
  }
}
