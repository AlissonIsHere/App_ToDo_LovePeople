import 'package:flutter/material.dart';
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
                children: const [
                  Text(
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
                    suffixIcon: const Icon(
                      Icons.search,
                      size: 30,
                      color: Color.fromRGBO(49, 1, 185, 1),
                    ),
                    hintText: 'Busque palavras-chave',
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(49, 1, 185, 1),
                      fontSize: 16,
                      fontFamily: 'Tahoma',
                    )),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final lista = list[index];
                  return Card(
                    child: ListTile(
                      title: Text(lista.title ?? ''),
                      subtitle: Text(lista.description ?? ''),
                      trailing: IconButton(
                          onPressed: () {
                            _showDialog();
                          },
                          icon: Image.asset('assets/Group.png')),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 90),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/NovoTodo');
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 90,
                )),
          )
        ],
      ),
    );
  }
}

void _showDialog() {
  List<Todo> list = [];
  ListView.builder(itemBuilder: ((context, index) {
    final nome = list[index];

    return AlertDialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: const Text(
        'Deseja deletar este item?',
        style: TextStyle(
          fontSize: 15,
          color: Color(0xFF3101B9),
          fontFamily: 'Montserrat-SemiBold',
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Text(
        '${nome.title} será movido para lixeira.',
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF3101B9),
          fontFamily: 'Montserrat-SemiBold',
          fontWeight: FontWeight.normal,
        ),
      ),
      contentPadding: EdgeInsets.fromLTRB(20, 2, 0, 10),
      actions: [
        MaterialButton(
          onPressed: () {},
          child: const Text(
            'Confirmar',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF3101B9),
              fontFamily: 'Montserrat-SemiBold',
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Cancelar',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFFA901F7),
              fontFamily: 'Montserrat-SemiBold',
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }));
}
