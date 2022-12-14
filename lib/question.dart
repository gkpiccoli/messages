import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String resposta;

  const Questao({super.key, required this.resposta});

  @override
  Widget build(BuildContext context) {
    return Text(
      resposta,
      style: TextStyle(fontSize: 22),
    );
  }
}

// child: conteúdo 