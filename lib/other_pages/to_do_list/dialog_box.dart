import 'package:flutter/material.dart';
import 'package:login_page/other_pages/to_do_list/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({super.key, 
    required this.controller, 
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
              ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //cancel
              MyButton(text: "Cancel", onPressed: onCancel),
              
              const SizedBox(width: 8),

              //save
              MyButton(text: "Save", onPressed: onSave),

            ],
          ),
        ],
        ),
      ),
    );
  }
}