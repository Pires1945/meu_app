//255, 132, 17, 193

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meu_app/button_conta.dart';

main() {
  runApp(App());
}

String nomeUsuario = 'Felipe';

class App extends StatelessWidget {
  Widget build(BuildContext) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          child: Column(
        children: [
          header(),
          corpo(),
        ],
      )),
    ));
  }
}

Widget header() {
  return Container(
    height: 150,
    width: 500,
    decoration: BoxDecoration(color: Color.fromARGB(255, 132, 17, 193)),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            top: 35,
          ),
          child: Row(
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 180),
                    child: Icon(
                      Icons.visibility_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.help_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.person_add_alt_1,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'Olá, ${nomeUsuario}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget corpo() {
  return Container(
    child: Column(
      children: [
        Row(
          children: [
            Padding(padding: const EdgeInsets.only(left: 15, top: 50)),
            Button(),
          ],
        ),
      ],
    ),
  );
}

Widget botao() {
  return Button();
}

class Button extends StatefulWidget {
  @override
  ButtonState createState() {
    return ButtonState();
  }
}

String texto = 'Teste';

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ButtonConta(texto, action)],
    );
  }

  void action() {
    setState(() {
      texto = 'Funcionou';
    });
  }
}
