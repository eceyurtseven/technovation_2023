import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';

class Thanks extends StatelessWidget {
  const Thanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Mood Meter')
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Thank you!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            SizedBox(height: 20,),
            
            SizedBox(
              height: 70,
              width: 180,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(showCalculatorPage: () {  },)),
                  );
                }, 
                child: Text(
                  "Back to the main Page",
                  textAlign: TextAlign.center,
                  )

              ),
            ),
          ],
        )
      ),
    );
  }
}