import 'package:flutter/material.dart';
import 'package:login_page/other_pages/to_do_list/my_button.dart';

class Writing extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  Writing({super.key, required this.controller, required this.onCancel, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('Writing')
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(left: 30, right: 30, top: 60),
        child: Column(
          children: [
            Text(
              "Journal",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 77, 37, 146),
              )
            ),

            SizedBox(height: 25,),

            TextField(
              controller: controller,
              maxLines: 20,
              decoration: InputDecoration(
                hintText: "Write here.",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.deepPurple),
                ),
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              autofocus: true,
            ),

            const SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                ),

                const SizedBox(width: 15),
                
                MyButton(
                  text: "Save", 
                  onPressed: onSave,
                ),
                
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}