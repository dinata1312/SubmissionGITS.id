import 'package:flutter/material.dart';

void main() {
  runApp(SoalKelima());
}

class SoalKelima extends StatefulWidget {
  const SoalKelima({Key? key}) : super(key: key);

  @override
  _SoalKelimaState createState() => _SoalKelimaState();
}

class _SoalKelimaState extends State<SoalKelima> {
  TextEditingController perintah = TextEditingController();
  String data = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Soal Kelima"),
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
                      var dataReversed =
                          perintah.text.split('').reversed.join();
                      var dataOriginal = perintah.text;

                      if (dataOriginal.toLowerCase() ==
                          dataReversed.toLowerCase()) {
                        data = "Result True (karena palindrom)";
                      } else {
                        data = "Result False (karena bukan palindrom)";
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
