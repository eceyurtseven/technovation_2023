import 'package:flutter/material.dart';
import 'package:login_page/other_pages/music/music.dart';
import 'package:login_page/other_pages/music/music_new_page.dart';
import 'package:login_page/other_pages/music/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicLastPage extends StatefulWidget {
  const MusicLastPage({super.key});

  @override
  State<MusicLastPage> createState() => _MusicLastPageState();
}

class _MusicLastPageState extends State<MusicLastPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  String mp3FilePath = "lib/other_pages/music/cruel_summer.mp3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 45),
              
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "lib/other_pages/music/images/adele.png",
                        width: 350,
                        height: 350,
                        ),
                    ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adele",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.grey.shade800,
                                ),
                            ),

                            const SizedBox(height: 6),

                            const Text(
                              "Easy On Me",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                ),
                              ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                          ),
                      ],
                    ),
                  ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const[
                  Text("0:00"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("2:13"),
                ],
              ),

              const SizedBox(height: 40),

              NewBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.8,
                  progressColor: Colors.lightGreen,
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => MusicNewPage()),
                      );
                        },
                        child: NewBox(
                          child: Icon(
                            Icons.skip_previous,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: NewBox(
                            child: GestureDetector(
                              child: Icon(
                                Icons.play_arrow,
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => MusicPage()),
                      );
                        },
                        child: NewBox(
                          child: Icon(
                            Icons.skip_next,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}