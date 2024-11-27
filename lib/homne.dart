import 'package:cuartaclase/components/todo_tilde.dart';
import 'package:flutter/material.dart';

import 'components/dialog_box.dart';

class Homne extends StatefulWidget {
  const Homne({super.key});

  @override
  State<Homne> createState() => _HomneState();
}

final _controller = TextEditingController();

class _HomneState extends State<Homne> {
  List taskLists = [
    ["Dar Clases", false],
    [" Clases", false],
    ["Dar ", false],
  ];
  //Metodo para marcar o desmarcar el checbox
  void checkBoxChange(bool? value, int index) {
    setState(() {
      taskLists[index][1] = !taskLists[index][1];
    });
  }

  //Metodo para crear una tarea

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () {
            Navigator.of(context).pop();
            _controller.clear();
          },
        );
      },
    );
  }

  // Guardar una nueva tarea.
  void saveNewTask(){
    setState(() {
      taskLists.add([_controller.text, false]);
      Navigator.of(context).pop();
      _controller.clear();
    });
  }

  void onDelete(int index){
    setState(() {
      taskLists.removeAt(index);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do app'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor.withAlpha(200),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: taskLists.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: taskLists[index][0],
            taskComplete: taskLists[index][1],
            onChanged: (value) {
              checkBoxChange(value, index);
            },
            onDelete: (context){
              setState(() {
                taskLists.removeAt(index);
              });
            }
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createNewTask();
        },

        shape: CircleBorder(eccentricity: 1),
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
