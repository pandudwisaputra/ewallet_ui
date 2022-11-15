import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:ewallet_demo/widgets/my_incomestats.dart';
import 'package:ewallet_demo/widgets/my_totalbalance.dart';
import 'package:ewallet_demo/widgets/my_transactionHistory.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 1, child: TotalBalance()),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const IncomeStats(),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Transaction History',
                      style: MyTypography.headingMedium.copyWith(
                        color: MyColor.darkPurple1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TransactionHistory()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
