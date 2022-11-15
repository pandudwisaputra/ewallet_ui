import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:ewallet_demo/widgets/my_appbar.dart';
import 'package:ewallet_demo/widgets/my_lasttransaction.dart';
import 'package:ewallet_demo/widgets/my_menu_button.dart';
import 'package:ewallet_demo/widgets/my_wallet_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            const MyAppBar(),
            const SizedBox(
              height: 41,
            ),
            const MyWalletCard(),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                MyMenuButton(
                  iconMenu: 'assets/svg/convert.svg',
                  textMenu: 'Transfer',
                ),
                MyMenuButton(
                  iconMenu: 'assets/svg/export.svg',
                  textMenu: 'Payment',
                ),
                MyMenuButton(
                  iconMenu: 'assets/svg/money-send.svg',
                  textMenu: 'Payout',
                ),
                MyMenuButton(
                  iconMenu: 'assets/svg/add-circle.svg',
                  textMenu: 'Top Up',
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Last Transaction',
                  style: MyTypography.headingMedium
                      .copyWith(color: MyColor.darkPurple1),
                ),
                Text(
                  'View All',
                  style: MyTypography.textSmall
                      .copyWith(color: MyColor.darkPurple3),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const LastTransaction()
          ],
        ),
      )),
    );
  }
}
