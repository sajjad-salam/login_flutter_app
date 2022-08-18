// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:project1_in_flutter/first.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  // ignore: prefer_final_fields, unused_field
  String _name = "";
  // ignore: prefer_final_fields
  String _pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // يعني يضيفلك الشغلات كلة من السنتر
          crossAxisAlignment: CrossAxisAlignment.center, // يخلي الشغلات بل سنتر
          children: [
            // ignore: avoid_unnecessary_containers

            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              //الكونتينر فادني بل تكست فيلد بتحديد العرض واللون
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius:
                      BorderRadius.circular(66)), //حتة البوكس يصير كيرف
              width: 266,
              child: TextField(
                onChanged: (newText) {
                  _name = newText;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: InputBorder.none, // يحذف الخط الزايد جوة
                  hintText: "Name : ",
                  helperStyle: TextStyle(fontSize: 19),
                  labelStyle: TextStyle(fontSize: 33),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 27), // مسافة خارجية
              padding: const EdgeInsets.symmetric(
                  vertical: 5, horizontal: 9), // مسافة داخلية
              //الكونتينر فادني بل تكست فيلد بتحديد العرض واللون
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius:
                      BorderRadius.circular(66)), //حتة البوكس يصير كيرف
              width: 266,
              child: TextField(
                onChanged: (newtext) {
                  _pass = newtext;
                },
                obscureText: true,
                decoration: const InputDecoration(
                    border: InputBorder.none, // يحذف الخط الزايد جوة
                    hintText: "Password :",
                    helperStyle: TextStyle(fontSize: 19),
                    labelStyle: TextStyle(fontSize: 33),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility)),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                if (_name == "user" && _pass == "user") {
                  Navigator.of(context).pushNamed("First");
                } else {
                  // ignore: avoid_print
                  print("0");
                }
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66))),
              ),
              child: const Text(
                "Log In",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
