import 'dart:convert';
import 'package:app_todo_lovepeople/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  final loginkey = '';

  Future<void> loginSalvo(Login login) async {
    final ok = await SharedPreferences.getInstance();

    ok.setString(loginkey, jsonEncode(login.toJson()));
  }

  Future<Login?> getLogin() async {
    final ok = await SharedPreferences.getInstance();

    final cache = ok.getString(loginkey);
    if (cache != null && cache.isNotEmpty) {
      return Login.fromJson(jsonDecode(cache));
    } else {
      return null;
    }
  }
}
