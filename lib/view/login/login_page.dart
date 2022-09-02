import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(169, 1, 247, 1),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    width: 750,
                    height: 262.93,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(375),
                            bottomRight: Radius.circular(375))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/logocoruja.png',
                          height: 150,
                          width: 158,
                          fit: BoxFit.contain,
                        ),
                        const Text(
                          'LovePeople',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Bold',
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(49, 1, 185, 1)),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 74, bottom: 30.5),
                  child: Text(
                    'Que bom que voltou!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat-SemiBold',
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19, right: 19, top: 32),
                  child: SizedBox(
                    width: 311,
                    height: 35,
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Tahoma'),
                      decoration: const InputDecoration(
                          hintText: 'Número de telefone, email ou CPF',
                          hintStyle:
                              TextStyle(color: Color.fromRGBO(49, 1, 185, 1)),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    width: 311,
                    height: 35,
                    child: TextFormField(
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          backgroundColor: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Tahoma'),
                      decoration: InputDecoration(
                          hintText: 'Senha',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(49, 1, 185, 1),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.remove_red_eye),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ))),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 80, bottom: 31),
                  child: Text(
                    'Esqueceu seu login ou senha? Clique aqui',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.62,
                  width: 91.8,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        color: const Color.fromRGBO(49, 1, 185, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                                fontSize: 16.5,
                                color: Colors.white,
                                fontFamily: 'Montserrat-SemiBold'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Não possui cadastro?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Tahoma',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Clique aqui',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 214, 0, 1),
                          fontSize: 15,
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
