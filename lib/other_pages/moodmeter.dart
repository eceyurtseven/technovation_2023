import 'package:flutter/material.dart';

class MoodMeterPage extends StatefulWidget {
  const MoodMeterPage({super.key});

  @override
  State<MoodMeterPage> createState() => _MoodMeterPageState();
}

class _MoodMeterPageState extends State<MoodMeterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Meter')
      ),
    );
  }
}