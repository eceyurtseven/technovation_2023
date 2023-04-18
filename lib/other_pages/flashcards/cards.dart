import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePage(title: 'Flashcards',),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 190, left: 70, right: 70, bottom: 80),
              child: ListView.builder(
                  itemCount: flashCard.length,
                  itemBuilder: (context, index) {
                    return flashCard[index];
                  }),
            ),
          ),
        );
  }

  final List<FlashCard> flashCard = List.generate(
      1,
      (index) => FlashCard(
            key: Key(index.toString()),
            frontWidget: Container(
                height: 100,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/320/320875/a-basic-diagram-of-a-mitochondrion.jpg?w=1155&h=1747',
                      width: 100,
                      height: 100,
                    ),
                    Text.rich(TextSpan(
                        text: 'Mitochondria',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        )),
        
                    Container(
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.deepPurple, width: 2),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(2, 2),
                                spreadRadius: 1,
                                blurRadius: 15)
                          ]),
                      child: Center(
                          child: Icon(Icons.volume_down_sharp,
                              color: Colors.deepPurple)),
                    ),
                  ],
                )),
            backWidget: Container(
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  'An organelle that is responsible from the biochemical processes of respiration and energy production.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            width: 300,
            height: 400,
          ));
}