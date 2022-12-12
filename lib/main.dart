import 'package:flutter/material.dart';

main() => runApp(const MsgApp());

class MsgApp extends StatelessWidget {
  const MsgApp({super.key});

  void resposta() {
    // ignore:avoid_print
    print('Mensagem Respondida');
  }

  void Function() retornaOutra() {
    return (() {
      // ignore: avoid_print
      print('Resposta #02');
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é sua comida favorita?',
      'Qual é o seu signo?',
      'Aonde você mora?'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mensagens'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: resposta,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: resposta,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: retornaOutra(),
              child: const Text('Resposta 3 '),
            ),
          ],
        ),
      ),
    );
  }
}
