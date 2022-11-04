import 'package:flutter/material.dart';

main() => runApp(const MsgApp());

class MsgApp extends StatelessWidget {
  const MsgApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mensagens'),
        ),
        body: const Text('Aplicativo de mensagens no Flutter!'), 
      ),
    );
  }
}
