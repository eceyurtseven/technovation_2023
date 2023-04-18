import 'package:flutter/material.dart';
import 'package:login_page/home_page.dart';
import './gpapage.dart';
class ScorePage extends StatelessWidget{
  
  final double score;
  ScorePage(this.score);
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.deepPurple,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Your GPA is: ",style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50.0)),
          new Text(score.toStringAsFixed(score.truncateToDouble() == score ? 0 : 3),style: new TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50.0)),
          new IconButton(
            icon: new Icon(Icons.arrow_right),
            color: Colors.white,
            iconSize: 50.0,
            onPressed: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(showCalculatorPage: () {  },)),
                  );
            },
          )
        ],
      )
    );
  }
}