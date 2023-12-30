import 'package:task_master/Core/enum.dart';

class TaskModel {
  final String type;
  final String title;
  final Tasklevels levels;
  TaskModel({required this.title, required this.levels, required this.type});
}

final taskDemos = [
  TaskModel(title: "The Logo Process", levels: Tasklevels.high, type: "Design"),
  TaskModel(
      title: "Design of the day challenge",
      levels: Tasklevels.medium,
      type: "Design"),
  TaskModel(title: "The Logo Process", levels: Tasklevels.high, type: "Design"),
  TaskModel(title: "The Logo Process", levels: Tasklevels.high, type: "Design"),
];
