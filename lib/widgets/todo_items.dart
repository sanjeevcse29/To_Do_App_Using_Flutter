import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/model/todo.dart';

class todo_item extends StatelessWidget {
final ToDo todo;

  const todo_item({super.key, required this.todo});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
      onTap: () {
        print('clicked on todo  item');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: Colors.white,
      leading: Icon(
        todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
        color: tdblue,
      ),
      title: Text(
         todo.todoText!,
        style: TextStyle(
          fontSize: 16,
          color: tdblack,
          decoration: todo.isDone? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.symmetric(vertical: 12),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: tdred,
          borderRadius: BorderRadius.circular(5),
        ),
        child: IconButton(
          color: Colors.white,
          iconSize: 18,
          icon: Icon(Icons.delete),
          onPressed: () {
            print('clicked on delete icon');
          },
        ),
      ),
    ));
  }
}
