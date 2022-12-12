import 'package:flutter/material.dart';

main() => runApp(const MsgApp());

class MsgApp extends StatelessWidget {
  const MsgApp({super.key});

  void resposta() {
    // ignore:avoid_print
    print('Pergunta Respondida');
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
          children: <Widget>[
            Text(perguntas[0]),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 1'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 2'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Resposta 3 '),
            ),
          ],
        ),
      ),
    );
  }
}
