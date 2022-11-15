import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Ewallet',
              style: MyTypography.textMedium,
            ),
            Text(
              'Active',
              style: MyTypography.textSmall.copyWith(color: MyColor.gray3),
            )
          ],
        ),
        const CircleAvatar(
          radius: 24,
          backgroundImage:
              NetworkImage('https://randomuser.me/api/portraits/men/44.jpg'),
        )
      ],
    );
  }
}
