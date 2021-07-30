// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(SoalPertama());
}

class SoalPertama extends StatefulWidget {
  const SoalPertama({Key? key}) : super(key: key);

  @override
  _SoalPertamaState createState() => _SoalPertamaState();
}

class _SoalPertamaState extends State<SoalPertama> {
  TextEditingController perintah = TextEditingController();
  String data = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Soal Pertama"),
            ),
            body: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextField(
                    controller: perintah,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      data = perintah.text;
                      if (int.parse(perintah.text) % 3 == 0 &&
                          int.parse(perintah.text) % 5 == 0) {
                        data = "Hello World";
                      } else if (int.parse(perintah.text) % 3 == 0) {
                        data = "Hello";
                      } else if (int.parse(perintah.text) % 5 == 0) {
                        data = "World";
                      } else {
                        data = "Input yang dimasukkan salah !";
                      }
                      setState(() {});
                    },
                    child: Text("Pencet buttonnya"),
                  ),
                  Text(data),
                ],
              ),
            )));
  }
}
