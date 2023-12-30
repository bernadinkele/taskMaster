import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_master/Core/core.dart';

class DefaultField extends StatelessWidget {
  DefaultField(
      {Key? key,
      required this.labelText,
      required this.hintText,
      this.isPassword,
      required this.controller})
      : super(key: key);
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  bool? isPassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Pallete.textColor,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        const Gap(4),
        SizedBox(
          height: getHeight(44),
          child: TextFormField(
            obscureText: isPassword != null ? true : false,
            obscuringCharacter: "*",
            controller: controller,
            style: const TextStyle(
              color: Pallete.textColor,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: Color(0xFF969696),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: getHeight(10), horizontal: getWidth(12)),
                filled: true,
                fillColor: Pallete.placeHolderBacColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(getSize(5)),
                    borderSide: BorderSide.none),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(getSize(5)),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(getSize(5)),
                    borderSide: BorderSide.none),
                suffixIcon: isPassword != null
                    ? Icon(
                        Icons.visibility,
                        color: Pallete.primaryColor,
                        size: getSize(24),
                      )
                    : null),
          ),
        )
      ],
    );
  }
}
