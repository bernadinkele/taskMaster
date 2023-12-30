import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task_master/Core/core.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton(
      {Key? key,
      this.btnIcon,
      required this.btnTextContent,
      this.filledColor,
      this.btnTextContentColor,
      this.raduis,
      this.function})
      : super(key: key);
  final String btnTextContent;
  String? btnIcon;
  Color? filledColor;
  Color? btnTextContentColor;
  double? raduis;
  VoidCallback? function;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function ?? () {},
      child: Container(
        width: double.infinity,
        height: getHeight(44),
        decoration: ShapeDecoration(
          color: filledColor ?? Pallete.primaryColor,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Pallete.primaryColor, width: 1),
              borderRadius: BorderRadius.circular(getSize((raduis ?? 5)))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            btnIcon != null
                ? Row(
                    children: [
                      SvgPicture.asset(
                        btnIcon!,
                        width: getSize(26),
                        height: getSize(26),
                      ),
                      const Gap(10)
                    ],
                  )
                : const SizedBox(),
            Text(
              btnTextContent,
              style: TextStyle(
                color: btnTextContentColor ?? Colors.white,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
