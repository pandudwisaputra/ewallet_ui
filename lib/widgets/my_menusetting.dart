// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/my_color.dart';
import '../common/my_typography.dart';

class MyMenuSetting extends StatelessWidget {
  String assetIcon;
  String name;

  MyMenuSetting({super.key, required this.assetIcon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {},
        child: Container(
          padding:
               const EdgeInsets.only(top: 15, bottom: 15, right: 20, left: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: MyColor.gray6)),
          child: Row(children: [
            SvgPicture.asset(assetIcon),
            const SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: MyTypography.textMedium.copyWith(
                color: MyColor.darkPurple1,
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/svg/Arrow - Right.svg')
          ]),
        ),
      ),
    );
  }
}
