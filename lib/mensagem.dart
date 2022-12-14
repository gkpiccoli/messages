import 'package:flutter/material.dart';

class Mensagens extends StatelessWidget {
  final String texto;
  const Mensagens({super.key, required this.texto});
  
  get perguntas => null;
  
  get perguntaSelecionada => null;

  @override
  Widget build(BuildContext context) {
    return Text(perguntas[perguntaSelecionada]);
  }
}
