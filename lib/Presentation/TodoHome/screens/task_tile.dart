import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task_master/Presentation/TodoHome/models/task_model.dart';
import 'package:task_master/Core/core.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key, required this.task}) : super(key: key);
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(12)),
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(getSize(14)),
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.borderColor, width: 0.5),
              borderRadius: BorderRadius.circular(getSize(12))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        task.type,
                        style: const TextStyle(
                          color: Pallete.primaryColor,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const Gap(4),
                      Text(
                        task.title,
                        style: const TextStyle(
                          color: Pallete.textColor,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  Container(
                      width: getSize(24),
                      height: getSize(24),
                      padding: EdgeInsets.all(getSize(2)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Pallete.borderColor),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.more_horiz,
                        color: Pallete.textColor,
                        size: getSize(20),
                      ))
                ],
              ),
              const Gap(8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Progress',
                    style: TextStyle(
                      color: Color(0xFF6E6E6E),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  const Gap(8),
                  Row(
                    children: [
                      Container(
                        height: getHeight(4),
                        width: getWidth(144),
                        color: const Color(0xFFD9D9D9),
                        child: Row(
                          children: [
                            Container(
                                height: getHeight(4),
                                width: getWidth(93),
                                color: Pallete.primaryColor),
                          ],
                        ),
                      ),
                      const Gap(6),
                      const Text(
                        '60%',
                        style: TextStyle(
                          color: Pallete.textColor,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Gap(8),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        AssetsConstants.calendar,
                        color: Pallete.primaryColor,
                      ),
                      const Gap(4),
                      const Text(
                        '12 Jan 2023',
                        style: TextStyle(
                          color: Color(0xFF6E6E6E),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  const Gap(16),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AssetsConstants.emojiFlag,
                        color: Pallete.primaryColor,
                      ),
                      const Gap(4),
                      const Text(
                        '20 Mar 2023',
                        style: TextStyle(
                          color: Color(0xFF6E6E6E),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Gap(8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: users.toList(),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getWidth(20), vertical: getHeight(4)),
                    decoration: ShapeDecoration(
                      color: getLevelsColor(task),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(41),
                      ),
                    ),
                    child: Text(
                      task.levels.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
