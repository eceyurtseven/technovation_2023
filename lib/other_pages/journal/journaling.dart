import 'dart:math';

import 'package:flutter/material.dart';
import 'package:login_page/other_pages/journal/writing.dart';
import './front_view.dart';
import './back_view.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> with TickerProviderStateMixin{
  bool isFrontView = true;

  late AnimationController controller;

  switchView(){
    setState(() {
      if(isFrontView){
        controller.forward();
      }
      else{
        controller.reverse();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Journaling')
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                      ),
                  ),
                   IconButton(
                    onPressed: (){},
                    iconSize: 30,
                    icon: const Icon(
                      Icons.short_text_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            DropdownButton(
              value: "2023",
              items: const [
                DropdownMenuItem(
                  value: "2023",
                  child: Text("2023"),
                ),
              ], 
              onChanged: (value) {},
            ),
            const SizedBox(height: 30),

            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: PageView.builder(
                  controller: PageController(
                    initialPage: 0,
                    viewportFraction: 0.78,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 12,
                  itemBuilder: (_, i) => AnimatedBuilder(
                    animation: controller,
                      builder: (_, child) {
                        if(controller.value >= 0.5){
                          isFrontView = false;
                        }
                        else{
                          isFrontView = true;
                        }
                        return Transform(
                          transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(controller.value * pi),
                          alignment: Alignment.center,
                          child: isFrontView
                            ? FrontView(monthIndex: i + 1) 
                            : Transform(
                              transform: Matrix4.rotationY(pi),
                              alignment: Alignment.center,
                              child: BackView(monthIndex: i+1)
                            ),
                        );
                      }
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 155,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wb_sunny_rounded,
                          color: Color.fromARGB(255, 228, 219, 243),
                        ),
                        const SizedBox(width: 10),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "MAR 4/2023",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),

                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Writing(
                          controller: null,
                          onCancel: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => JournalPage()),
                            );
                          },
                          onSave: (){},
                        ),),
                      );
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                        ),
                    ),
                  ),
                  const SizedBox(width: 10),

                  GestureDetector(
                    onTap: () => switchView(),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: isFrontView? Colors.deepPurple : Colors.deepPurple,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        isFrontView 
                          ? Icons.calendar_month_rounded 
                          : Icons.undo_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 75,)
          ],
        ),
      ),
    );
  }
}



