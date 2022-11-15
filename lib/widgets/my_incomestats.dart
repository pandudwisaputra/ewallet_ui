import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/my_color.dart';
import '../common/my_typography.dart';

class IncomeStats extends StatefulWidget {
  const IncomeStats({super.key});

  @override
  State<IncomeStats> createState() => _IncomeStatsState();
}

class _IncomeStatsState extends State<IncomeStats> {
  final List<String> items = [
    'Jan - Feb',
    'Feb - Mar',
    'Mar - Apr',
    'Apr - May',
    'May - Jun',
    'Jun - Jul',
    'Jul - Aug',
    'Aug - Sep',
    'Sep - Oct',
    'Oct - Nov',
    'Nov - Dec',
    'Dec - Jan',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Income Stats',
              style: MyTypography.headingMedium.copyWith(
                color: MyColor.darkPurple1,
              ),
            ),
            const Spacer(),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: MyColor.darkestGray),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SvgPicture.asset('assets/svg/Arrow - Left 2.svg'),
                ),
                buttonHeight: 50,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonElevation: 2,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            )
          ],
        ),
        SvgPicture.asset('assets/svg/Stats.svg'),
      ],
    );
  }
}
