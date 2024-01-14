import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final addTodoTask;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.addTodoTask, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //get user Input
            TextField(
              controller: addTodoTask,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            //button => save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //cancel button
                MyButton(buttonName: "Cancel", onPressed: onCancel),
                const SizedBox(
                  width: 10,
                ),
                //save button
                MyButton(buttonName: "Save", onPressed: onSave)
              ],
            )
          ],
        ),
      ),
    );
  }
}
