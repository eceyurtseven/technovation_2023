import 'package:flutter/material.dart';
import 'package:login_page/other_pages/mood_meter/thanks.dart';

class Comments extends StatelessWidget {
  final controller;
  const Comments({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Mood Meter')
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(left: 30, right: 30, top: 45),
        child: Column(
          children: [
            Text(
              "Would you like to add any comments?",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            TextField(
              controller: controller,
              maxLines: 19,
              decoration: InputDecoration(
                hintText: "Write your comments here.",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                  borderRadius: BorderRadius.all(Radius.circular(14.0)),
                ),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              autofocus: true,
            ),

            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 160,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                         MaterialPageRoute(builder: (context) => Thanks()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                    ),
                    child: Text(
                      "Enter",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}