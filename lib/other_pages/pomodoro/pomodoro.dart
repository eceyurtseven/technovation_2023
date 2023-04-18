import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page/home_page.dart';

class TimerCountdown extends StatefulWidget {
  const TimerCountdown({super.key});

  @override
  _TimerCountdownState createState() => _TimerCountdownState();
}
class _TimerCountdownState extends State<TimerCountdown> {
  int minute = 0;
  Duration duration = Duration(minutes: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            setState(() {
              duration = Duration(seconds: 0);
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage(showCalculatorPage: () {  },)),
           );
          }, // <-- SEE HERE
        ),
        title: Text('Pomodoro Timer')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              formatTime(duration),
              style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
            ),
            Container(
              width: 100,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
                decoration: InputDecoration(
                  hintText: '00',
                  labelText: 'Min',
                ),
                onChanged: (value) {
                  setState(() {
                    minute = int.parse(value);
                    duration = Duration(minutes: minute);
                  });
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text(
                'Start',
                style: TextStyle(fontSize: 30.0),
              ),
              onPressed: () {
                FocusManager.instance.primaryFocus!.unfocus();
                Timer.periodic(Duration(seconds: 1), (timer) {
                  if (duration.inSeconds == 0) {
                    timer.cancel();
                  } else {
                    setState(() {
                      duration -= Duration(seconds: 1);
                    });
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
String formatTime(Duration duration) {
  String minutes = (duration.inMinutes).toString().padLeft(2, '0');
  String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
  return '$minutes:$seconds';
}
