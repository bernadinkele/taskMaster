import 'package:flutter/material.dart';
import 'package:task_master/Presentation/TodoHome/todo_home.dart';
void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoHomeView(),
    );
  }
}
