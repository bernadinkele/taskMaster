import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_master/Core/app_colors.dart';
import 'package:task_master/Core/app_config_size.dart';

class TodoHomeView extends StatelessWidget {
  const TodoHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   MathUtils.init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getWidth(20)).copyWith(
          top: MediaQuery.of(context).viewPadding.top
        ),
        child: Column(
          children: [
              Container(
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://s3-alpha-sig.figma.com/img/a9bb/d589/3b795a181bdc239051fe22fba2c379f5?Expires=1704672000&Signature=lbB0LEbIA6VoPI2X~6snB247IKGebq8fFjxCETr15kEIDFiDe-3ioBpo~ARbvrKgqiNK1JnI4Nx7GaH0dfoYV4VXu2KDrO~PFJyY0Int4xVPt9WTsSNCEpkWr4AIyWyiMjYFG-wwedgxI7KoLHY46n2s0beU6bTGtkcEpISr5gaKILH-pCLF2BgdPK1wKD36P7H5F2hjOoVvIQeKAD-mmoIOSRdx0ICrYUxZidYiHZurdADwO6Lyv0ZO9XQ72AdR4ES93BueGRsw9-BwoMZ2Te4eM74w-piUUA8oSlp1fQnWqLQwEVY4MQjtjLb~HjjU40D4Cl5kCI1Hbdf0-rIBqg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                              radius: getSize(23),
                            ),
                            Gap(8),
                            Column(
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
                          width: getSize(28),
                          height: getSize(28),
                          decoration: BoxDecoration(
                            border: Border.all(color: Pallete.borderColor, width: 1),
                            shape: BoxShape.circle
                          ),
                          child: Icon(Iconsax.menu3),
                        )
                      ],
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
