import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import '../model/todo.dart';

class TodoItems extends StatelessWidget{
  final Todo todo;
  final onToDoChange;
  final onDeleteItem;

  const TodoItems({Key? key, required this.todo, required this.onToDoChange,
    required this.onDeleteItem}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child:
    ListTile(
      onTap: () {
        onToDoChange(todo);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20)
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      tileColor: Colors.white, //tile matlab box
      leading: Icon(todo.isDone?
          Icons.check_box: Icons.check_box_outline_blank,
          color: tdBlue),
      title: Text(todo.todoText!,style: TextStyle(fontSize: 16,color: tdBlack,decoration:todo.isDone? TextDecoration.lineThrough:null,),),
      trailing: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: tdRed,
          borderRadius: BorderRadius.circular(5),
        ),
        child: IconButton(
            color: Colors.white,
            iconSize: 18,
        icon: Icon(Icons.delete),
        onPressed: (){

              onDeleteItem(todo.id);
        },
        ),
      ),

    )
    );
  }
}