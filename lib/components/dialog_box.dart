import 'package:flutter/material.dart';

import 'my_button.dart';


class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key, required this.controller, this.onSave, this.onCancel,
  });

  final TextEditingController controller;
  final void Function()? onSave;
  final void Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).primaryColor.withAlpha(110),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add New Task',
              ),

            ),
            Row(
              children: [
                MyButton(ButtonText: 'Save',
                  onPressed: onSave,
                ),
                SizedBox( width: 20,),
                MyButton(ButtonText: 'Cancel', onPressed:onCancel ,),

              ],
            ),
          ],
        ),
      ),
    );
  }

}

