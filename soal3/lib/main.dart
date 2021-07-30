// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(SoalKetiga());
}

class SoalKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Soal Ketiga',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.greenAccent,
        timePickerTheme: TimePickerThemeData(
          backgroundColor: Colors.amberAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          hourMinuteShape: CircleBorder(),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedTime;

  Future<void> _show() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  // Using 12-Hour format
                  alwaysUse24HourFormat: false),
              // If you want 24-Hour format, just change alwaysUse24HourFormat to true
              child: child!);
        });
    if (result != null) {
      setState(() {
        var data = result.format(context);

        if (data.contains('PM')) {
          var hour = data.split(':');
          var menit = hour[1].split(" ");
          var jam = int.parse(hour[0]) + int.parse('12');
          String totalJam = jam.toString() + ':' + menit[0];
          _selectedTime = totalJam.toString();
        }

        // _selectedTime = result.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soal Ketiga'),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(_selectedTime != null ? _selectedTime! : 'No time selected!',
                style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
            ElevatedButton(
              onPressed: _show,
              child: Text('Show Time Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
