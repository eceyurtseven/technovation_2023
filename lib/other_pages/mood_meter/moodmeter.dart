import 'package:flutter/material.dart';
import 'package:login_page/other_pages/mood_meter/comments.dart';

class MoodMeterPage extends StatefulWidget {
  const MoodMeterPage({super.key});

  @override
  State<MoodMeterPage> createState() => _MoodMeterPageState();
}

class _MoodMeterPageState extends State<MoodMeterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Mood Meter')
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          children: [
            Text(
              "How are you feeling today?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              ),
            
            SizedBox(height: 15,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Comments(controller: null)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 41, 123, 44),
                    size: 120,
                  ),
            
                  SizedBox(width: 10),
            
                  Text(
                    "Great",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Comments(controller: null)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 57, 198, 62),
                    size: 120,
                  ),
            
                  SizedBox(width: 10),
            
                  Text("Good",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Comments(controller: null)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.yellow,
                    size: 120,
                  ),
            
                  SizedBox(width: 10),
            
                  Text("Moderate",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Comments(controller: null)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.orange,
                    size: 120,
                  ),
            
                  SizedBox(width: 10),
            
                  Text("Bad",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 15,),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Comments(controller: null)),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 120,
                  ),
            
                  SizedBox(width: 10),
            
                  Text("Awful",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}