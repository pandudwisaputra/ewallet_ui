import 'package:ewallet_demo/common/my_typography.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/my_color.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      required this.prefixIcon,
      required this.hintText,
      this.suffixIcon,
      this.obscureText})
      : super(key: key);

  final String prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            fillColor: MyColor.gray6,
            filled: true,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                prefixIcon,
              ),
            ),
            hintText: hintText,
            hintStyle: MyTypography.textMedium.copyWith(color: MyColor.gray3),
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.transparent))));
  }
}
