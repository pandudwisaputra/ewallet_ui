import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TotalBalance extends StatelessWidget {
  const TotalBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Total Balance',
          style: MyTypography.textMedium.copyWith(color: MyColor.darkGrey),
        ),
        Text(
          NumberFormat.currency(
                  locale: 'en_US', decimalDigits: 0, symbol: '\$ ')
              .format(13248),
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            fontSize: 36,
            color: MyColor.purple,
          ),
        ),
      ],
    );
  }
}
