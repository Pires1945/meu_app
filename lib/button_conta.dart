import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonConta extends StatelessWidget {
  String texto;
  final void Function() selecionado;
  ButtonConta(this.texto, this.selecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        child: TextButton(
          onPressed: selecionado,
          child: Text(texto),
        ));
  }
}
