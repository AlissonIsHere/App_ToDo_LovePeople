import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../model/todo.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> list = [];
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 11, top: 14),
                      height: 90,
                      width: 90,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(90),
                        ),
                      ),
                      child: Image.asset(
                        'assets/logo_lovepeople.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Suas listagens',
                    style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              width: 311,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    suffixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Color.fromRGBO(49, 1, 185, 1),
                    ),
                    hintText: 'Busque palavras-chave',
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(49, 1, 185, 1),
                      fontSize: 16,
                      fontFamily: 'Tahoma',
                    )),
              ),
            ),
          ),
          ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              final lista = list[index];
              return Card(
                child: ListTile(
                  title: Text(lista.title ?? ''),
                  subtitle: Text(lista.description ?? ''),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
