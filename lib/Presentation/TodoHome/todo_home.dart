import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task_master/Presentation/TodoHome/models/task_model.dart';
import 'package:task_master/Presentation/TodoHome/screens/search_field.dart';
import 'package:task_master/Presentation/TodoHome/screens/task_tile.dart';
import 'package:task_master/Core/core.dart';

class TodoHomeView extends StatelessWidget {
  const TodoHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MathUtils.init(context);

    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20))
              .copyWith(top: MediaQuery.of(context).padding.top),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: const NetworkImage(
                              "https://s3-alpha-sig.figma.com/img/a9bb/d589/3b795a181bdc239051fe22fba2c379f5?Expires=1704672000&Signature=lbB0LEbIA6VoPI2X~6snB247IKGebq8fFjxCETr15kEIDFiDe-3ioBpo~ARbvrKgqiNK1JnI4Nx7GaH0dfoYV4VXu2KDrO~PFJyY0Int4xVPt9WTsSNCEpkWr4AIyWyiMjYFG-wwedgxI7KoLHY46n2s0beU6bTGtkcEpISr5gaKILH-pCLF2BgdPK1wKD36P7H5F2hjOoVvIQeKAD-mmoIOSRdx0ICrYUxZidYiHZurdADwO6Lyv0ZO9XQ72AdR4ES93BueGRsw9-BwoMZ2Te4eM74w-piUUA8oSlp1fQnWqLQwEVY4MQjtjLb~HjjU40D4Cl5kCI1Hbdf0-rIBqg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                          radius: getSize(23),
                        ),
                        const Gap(8),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello',
                              style: TextStyle(
                                color: Color(0xFF535353),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Text(
                              'Sarthak',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        width: getWidth(28),
                        height: getWidth(28),
                        padding: EdgeInsets.all(getSize(8)),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Pallete.borderColor, width: 1),
                            shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          AssetsConstants.menu,
                        ))
                  ],
                ),
                const Gap(10),
                const SearchField(),
                const Gap(10),
                const Text(
                  'Your Task',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                const Gap(10),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(getSize(16)),
                      decoration: BoxDecoration(
                          color: Pallete.primaryColor,
                          borderRadius: BorderRadius.circular(getSize(10))),
                      child: const Text(
                        'in progress',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Gap(12),
                    Container(
                      padding: EdgeInsets.all(getSize(16)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Pallete.borderColor),
                          borderRadius: BorderRadius.circular(getSize(10))),
                      child: const Text(
                        'To Do',
                        style: TextStyle(
                          color: Color(0xFF9A9A9A),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Gap(12),
                    Container(
                      padding: EdgeInsets.all(getSize(16)),
                      decoration: BoxDecoration(
                          border: Border.all(color: Pallete.borderColor),
                          borderRadius: BorderRadius.circular(getSize(10))),
                      child: const Text(
                        'Completed',
                        style: TextStyle(
                          color: Color(0xFF9A9A9A),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                Column(
                    children:
                        taskDemos.map((task) => TaskTile(task: task)).toList())
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(20), vertical: getHeight(4)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                AssetsConstants.hiIcon,
                color: Pallete.primaryColor,
                width: getSize(24),
                height: getSize(24),
              ),
              SvgPicture.asset(
                AssetsConstants.calendar2,
                width: getSize(24),
                height: getSize(24),
              ),
              CircleAvatar(
                backgroundColor: Pallete.primaryColor,
                radius: getSize(28),
                child: Icon(
                  Icons.add,
                  size: getSize(24),
                  color: Colors.white,
                ),
              ),
              SvgPicture.asset(
                AssetsConstants.chart,
                width: getSize(24),
                height: getSize(24),
              ),
              SvgPicture.asset(
                AssetsConstants.profile,
                width: getSize(24),
                height: getSize(24),
              ),
            ],
          ),
        ));
  }
}
