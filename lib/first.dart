import 'package:flutter/material.dart';
import 'dart:async';

// ignore: camel_case_types
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

// ignore: camel_case_types
class _firstState extends State<first> {
  // ignore: unused_element
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('this is your program'),
                Text('do you like contnue'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 600, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [IconButton(onPressed: null, icon: Icon(Icons.add))],
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
