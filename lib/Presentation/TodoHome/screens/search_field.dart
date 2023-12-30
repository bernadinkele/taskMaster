import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_master/Core/core.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(44),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Find your task here..",
            hintStyle: const TextStyle(
              color: Color(0xFFDADADA),
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
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getHeight(10), horizontal: getWidth(12)),
              child: SvgPicture.asset(AssetsConstants.search),
            )),
      ),
    );
  }
}
