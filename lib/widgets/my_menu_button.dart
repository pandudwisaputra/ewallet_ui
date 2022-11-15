import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyMenuButton extends StatelessWidget {
  const MyMenuButton({Key? key, required this.iconMenu, required this.textMenu})
      : super(key: key);

  final String iconMenu;
  final String textMenu;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset(iconMenu)),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          textMenu,
          style: MyTypography.textSmall.copyWith(color: MyColor.gray2),
        )
      ],
    );
  }
}
