import 'package:flutter/material.dart';
import 'package:task_master/Core/routes/route_name.dart';
import 'package:task_master/Presentation/Auth/signin_view.dart';
import 'package:task_master/Presentation/Auth/signup_view.dart';
import 'package:task_master/Presentation/TodoHome/todo_home.dart';

class Routes{
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings)
  {
    switch(routeSettings.name)
    {
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const TodoHomeView(),);
      case RoutesName.signIn:
        return MaterialPageRoute(builder: (context) =>const SignInView(),);
      case RoutesName.signup:
        return MaterialPageRoute(builder: (context) => const SignUpView(),);
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Text("Unknown route"),
        ));
    }
  }
}