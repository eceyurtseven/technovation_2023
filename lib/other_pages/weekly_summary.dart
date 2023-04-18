import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class WeeklySummaryPage extends StatefulWidget {
  const WeeklySummaryPage({super.key});

  @override
  State<WeeklySummaryPage> createState() => _WeeklySummaryPageState();
}

class _WeeklySummaryPageState extends State<WeeklySummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Weekly Summary')
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 30, right: 30),
        child: HeatMap(
          datasets: {
            DateTime(2023, 4, 9): 4,
            DateTime(2023, 4, 11): 6,
            DateTime(2023, 4, 12): 4,
            DateTime(2023, 4, 13): 8,
            DateTime(2023, 4, 15): 3,
            DateTime(2023, 4, 17): 7,
            DateTime(2023, 4, 18): 10,
            DateTime(2023, 4, 19): 13,
            DateTime(2023, 4, 22): 6,
            DateTime(2023, 4, 25): 3,
            DateTime(2023, 4, 27): 7,
            DateTime(2023, 4, 29): 11,
            DateTime(2023, 4, 30): 5,
            DateTime(2023, 5, 2): 9,
            DateTime(2023, 5, 5): 3,
            DateTime(2023, 5, 8): 12,
            DateTime(2023, 5, 10): 7,
            DateTime(2023, 5, 11): 10,
            DateTime(2023, 5, 16): 5,
            DateTime(2023, 5, 19): 13,
            DateTime(2023, 5, 21): 7,
            DateTime(2023, 5, 24): 3,
            DateTime(2023, 5, 27): 6,
            DateTime(2023, 5, 29): 5,
            DateTime(2023, 6, 3): 8,
            DateTime(2023, 6, 5): 11,
            DateTime(2023, 6, 8): 7,
            DateTime(2023, 6, 11): 6,
            DateTime(2023, 6, 13): 7,
          },
          startDate: DateTime.now(),
          endDate: DateTime.now().add(Duration(days: 60)),
          size: 30,
          colorMode: ColorMode.opacity,
          showText: false,
          scrollable: true,
          colorsets: {
            1: Color.fromARGB(255, 168, 8, 242),
            2: Color.fromARGB(255, 168, 8, 242),
            3: Color.fromARGB(255, 168, 8, 242),
            4: Color.fromARGB(255, 168, 8, 242),
            5: Color.fromARGB(255, 168, 8, 242),
            6: Color.fromARGB(255, 168, 8, 242),
            7: Color.fromARGB(255, 168, 8, 242),
            8: Color.fromARGB(255, 168, 8, 242),
            9: Color.fromARGB(255, 168, 8, 242),
            10: Color.fromARGB(255, 168, 8, 242),
          },
        ),
      ),
    );
  }
}