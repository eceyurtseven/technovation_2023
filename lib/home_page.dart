import 'package:flutter/material.dart';
import 'package:login_page/other_pages/calculator/calculator.dart';
import 'package:login_page/other_pages/flashcards/cards.dart';
import 'package:login_page/other_pages/grade_calculator/gpapage.dart';
import 'package:login_page/other_pages/journal/journaling.dart';
import 'package:login_page/other_pages/mood_meter/moodmeter.dart';
import 'package:login_page/other_pages/music/music.dart';
import 'package:login_page/other_pages/pomodoro/pomodoro.dart';
import 'package:login_page/other_pages/quotes/quotes.dart';
import 'package:login_page/other_pages/to_do_list/to_do_list.dart';
import 'package:login_page/other_pages/weekly_summary.dart';
import 'package:login_page/profile/user.dart';

class HomePage extends StatefulWidget {
  final VoidCallback showCalculatorPage;
  const HomePage({Key? key, required this.showCalculatorPage}) : super(key: key);
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Profile"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalculatorPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Calculator"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Flahscards"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GPA()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Grade Calculator"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JournalPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Journaling"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoodMeterPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Mood Meter"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MusicPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Music"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimerCountdown()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Pomodoro Timer"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuotesPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Inspirational Quotes"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ToDoPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("To-Do List"),
              ),
            ),
            SizedBox(height: 5),

            SizedBox(
              height:  60,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeeklySummaryPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 152, 44, 235),
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                child: Text("Weekly Summary"),
              ),
            ),
          ],
          
        ),
        
        )
    );
  }
}