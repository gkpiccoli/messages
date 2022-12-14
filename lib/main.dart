import 'package:flutter/material.dart';

main() => runApp(const MsgApp());

class MsgApp extends StatefulWidget {
  const MsgApp({super.key});

  @override
  State<MsgApp> createState() => _MsgAppState();
}

class _MsgAppState extends State<MsgApp> {
  var perguntaSelecionada = 0; // classe state

  void _resposta() {
    setState(() {
      perguntaSelecionada++;
    });

    // ignore: avoid_print
    print(perguntaSelecionada); // método
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
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: _resposta,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _resposta,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _resposta,
              child: const Text('Resposta 3 '),
            ),
          ],
        ),
      ),
    );
  }
}
