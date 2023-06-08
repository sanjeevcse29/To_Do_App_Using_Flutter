class ToDo
{
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todolist(){
    return [
      ToDo(id: '01', todoText: 'Good Morning', isDone: true),
      ToDo(id: '02', todoText: 'Good Exercise', isDone: true),
      ToDo(id: '03', todoText: 'Check Mails',),
      ToDo(id: '04', todoText: 'Good Evening', isDone: true),
      ToDo(id: '05', todoText: 'work on mobile apps for 2 hour',),
    ];
  }

}