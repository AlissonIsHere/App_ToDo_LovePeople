import 'package:flutter/material.dart';

class CadastroConcluido extends StatefulWidget {
  const CadastroConcluido({Key? key}) : super(key: key);

  @override
  State<CadastroConcluido> createState() => _CadastroConcluidoState();
}

class _CadastroConcluidoState extends State<CadastroConcluido> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFA901F7),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 25, top: 200),
                      child: Text(
                        'Cadastro Concluído!',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontFamily: "Montserrat-SemiBold",
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      'Começar',
                      style: TextStyle(
                        fontFamily: 'Montserrat-SemiBold',
                        fontSize: 19,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF3101B9),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 390,
              height: 210,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(185),
                    topRight: Radius.circular(185)),
                color: Colors.white,
              ),
              child: Container(
                child: Image.asset('assets/coruja_cadastro.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 35,
              ),
              child: const Text(
                'Os ventos da programação estão indo até você',
                style: TextStyle(
                    color: Color(0xFF3101B9),
                    fontSize: 17,
                    fontFamily: 'Tahoma'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
