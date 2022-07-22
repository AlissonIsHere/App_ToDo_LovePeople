import 'package:app_todo_lovepeople/view/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}