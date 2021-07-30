import 'package:flutter/material.dart';

void main() {
  runApp(SoalKeempat());
}

class SoalKeempat extends StatefulWidget {
  const SoalKeempat({Key? key}) : super(key: key);

  @override
  _SoalKeempatState createState() => _SoalKeempatState();
}

class _SoalKeempatState extends State<SoalKeempat> {
  TextEditingController perintah = TextEditingController();
  String data = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Soal Keempat"),
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
                      data = perintah.text.split('').reversed.join();
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
