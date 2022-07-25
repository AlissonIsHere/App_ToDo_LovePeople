import 'package:app_todo_lovepeople/view/Componentes/olho_icons.dart';
import 'package:flutter/material.dart';

class PagCadastro extends StatefulWidget {
  const PagCadastro({Key? key}) : super(key: key);

  @override
  State<PagCadastro> createState() => _PagCadastroState();
}

class _PagCadastroState extends State<PagCadastro> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmacaoController = TextEditingController();
  bool _enableObscure = true;

  @override
  void initState() {
    _nomeController.text = "";
    _emailController.text = "";
    _senhaController.text = "";
    _confirmacaoController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA901F7),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 79,
                  ),
                  child: Text(
                    'Vamos começar!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Montserrat-SemiBold",
                    ),
                  ),
                ),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _nomeController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Esse campo é obrigatório!";
                              }
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              hintText: "Nome",
                              hintStyle: TextStyle(
                                color: Color(0xFF3101B9),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Esse campo é obrigatório!";
                              }
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10,
                                  ),
                                ),
                              ),
                              hintText: "Número de telefone, email ou CPF",
                              hintStyle: TextStyle(
                                color: Color(0xFF3101B9),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _senhaController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Esse campo é obrigatório!";
                              }
                            },
                            obscureText: _enableObscure,
                            decoration: InputDecoration(
                              suffixIcon: _buildSuffixPassword(),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              hintText: "Senha",
                              hintStyle: const TextStyle(
                                color: Color(
                                  0xFF3101B9,
                                ),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: const EdgeInsets.only(left: 15),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _confirmacaoController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Esse campo é obrigatório!";
                              }
                              if (_senhaController.text ==
                                  _confirmacaoController.text) {
                                return null;
                              } else {
                                return "Confirmação de senha invalida";
                              }
                            },
                            obscureText: _enableObscure,
                            decoration: InputDecoration(
                              suffixIcon: _buildSuffixPassword(),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    10,
                                  ),
                                ),
                              ),
                              hintText: "Confirmar senha",
                              hintStyle: const TextStyle(
                                color: Color(0xFF3101B9),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: const EdgeInsets.only(
                                left: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF3101B9),
                              ),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                                side: const BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              )),
                            ),
                            onPressed: () {},
                            child: Container(
                              width: 100,
                              child: const Center(
                                child: Text(
                                  "Cadastrar",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat-SemiBold",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Divider(
                    color: Colors.white,
                    height: 1,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Já possui cadastro? ',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "Entrar",
                          style: TextStyle(
                            color: Colors.yellow,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildSuffixPassword() {
    return IconButton(
        icon: Icon(_enableObscure ? Olho.olho : Olho.olho),
        onPressed: () {
          setState(() {
            _enableObscure = !_enableObscure;
          });
        });
  }
}
