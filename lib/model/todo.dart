//Totodo.dart wali file yeh batati hai ke ek task kaisa dikhega aur uska data kaise store hoga
class Todo {
  String? id; //? = nullable (value ho bhi sakti hai, nahi bhi)
  String? todoText;
  bool isDone;

  Todo ({ //Constructor
    // id deni hi deni hai
    // warna error aayega
    required this.id,
    required this.todoText,
    this.isDone= false,
});

  static List<Todo> todoList(){ //Yeh static function hai jo list return karta hai...
    //aur class se direct call hotaa hain.
    return [
      Todo(id: '01', todoText: 'Morning Exercise',isDone: true),
      Todo(id: '02', todoText: 'Breakfast',isDone: true),
      Todo(id: '03', todoText: 'Buy Groceries',),
      Todo(id: '04', todoText: 'Check Email',),
      Todo(id: '05', todoText: 'Team Meeting',),
      Todo(id: '06', todoText: 'Work on mobile apps for 2 hours',),
      Todo(id: '07', todoText: 'Dinner time',),
      Todo(id: '08', todoText: 'NightWalk Time',),

    ];
}
}