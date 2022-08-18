import 'package:flutter/material.dart';
import 'first.dart';

import 'home.dart';

void main(List<String> args) => runApp(const myapp());

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        'First': (BuildContext context) => const first(),
        'home': (BuildContext context) => const home(),
      },
      home: const home(),
    );
  }
}
