import 'dart:html';

import 'package:flutter/material.dart';

main() => runApp(MsgApp());

class MsgApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(actions: [ElevatedButton(
        child: const Text('Button label'),
        onPressed: () {},
      )],)),
    );
  }
}
