import 'package:flutter/material.dart';

class NovaTarefa extends StatefulWidget {
  const NovaTarefa({Key? key}) : super(key: key);

  @override
  State<NovaTarefa> createState() => _NovaTarefaState();
}

class _NovaTarefaState extends State<NovaTarefa> {
  final _cores = ['FFF2CC', 'FFD9F0', 'E8C5FF', 'CAFBFF', 'E3FFE6'];
  final _formKey = GlobalKey<FormState>();
  final _tituloTarefa = TextEditingController();
  final _descricaoTarefa = TextEditingController();
  String _selectedColor = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA901F7),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(
                  40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: const Text(
                        'Nova Tarefa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _tituloTarefa,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Campo obrigatório';
                              }
                            },
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 17,
                                color: Colors.indigo[900],
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: ('Título da Tarefa'),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 14,
                            ),
                          ),
                          TextFormField(
                            controller: _descricaoTarefa,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Campo Obrigatório';
                              }
                            },
                            maxLines: 10,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.indigo[900],
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(20)),
                              hintText:
                                  ('Escreva uma descrição para sua tarefa'),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          Container(
                            child: buildListView(),
                            margin: EdgeInsets.only(
                              top: 25,
                            ),
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 11, top: 14),
              child: Image.asset(
                'assets/logo_lovepeople.png',
                height: 50,
                width: 50,
              ),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/botton_cancel.png',
                width: 35,
                height: 35,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/TodoList', arguments: _descricaoTarefa, _tituloTarefa);
              },
              child: Image.asset(
                'assets/botton_confirm.png',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showError() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Não foi possivel cadastrar TO-DO',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _cores.length,
      itemBuilder: (context, index) {
        final colorButton = '0xFF${_cores[index]}';
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: Color(
              int.parse(colorButton),
            ),
            elevation: _selectedColor == _cores[index] ? 10 : 0,
          ),
          onPressed: () {
            setState(() {
              _selectedColor = _cores[index];
            });
          },
          child: SizedBox(
            width: 20,
          ),
        );
      },
    );
  }
}
