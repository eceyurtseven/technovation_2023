import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:login_page/other_pages/to_do_list/database.dart';
import 'package:login_page/other_pages/to_do_list/dialog_box.dart';
import 'package:login_page/other_pages/to_do_list/to_do_tile.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  final _myBox = Hive.box("mybox");

  final _controller = TextEditingController();

  ToDoDatabase database = ToDoDatabase();

  @override
  void initState() {

    if (_myBox.get("TODOLIST") == null) {
      database.createInitialData();
    }
    else {
      database.loadData();
    }

    super.initState();
  }

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      database.toDoList[index][1] = !database.toDoList[index][1];
    });
    database.updateDatabase();
    
  }

  void saveNewTask() {
    setState(() {
      database.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    database.updateDatabase();
    
  }

  void createNewTask(){
    showDialog(context: context, builder: (context) {
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
      );
    },
    );
  }

  void deleteTask(int index){
    setState(() {
      database.toDoList.removeAt(index);
    });
    database.updateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('To-Do')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: database.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: database.toDoList[index][0],
            taskCompleted: database.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}