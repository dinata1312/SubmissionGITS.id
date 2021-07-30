import 'package:flutter/material.dart';

void main() {
  runApp(SoalKedua());
}

class SoalKedua extends StatefulWidget {
  const SoalKedua({Key? key}) : super(key: key);

  @override
  _SoalKeduaState createState() => _SoalKeduaState();
}

class _SoalKeduaState extends State<SoalKedua> {
  TextEditingController perintah = TextEditingController();
  String data = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Soal Kedua"),
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
                      if (data.contains('@')) {
                        var email = data.split('@');
                        if (email[1].contains('.') &&
                            email[0].length <= 20 &&
                            (email[1].contains('.co.id') ||
                                email[1].contains('.id'))) {
                          data = "Format email yang dimasukkan benar";
                        } else {
                          data = "Format email yang dimasukkan salah";
                        }
                      } else {
                        data = "Format email yang dimasukkan salah";
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
