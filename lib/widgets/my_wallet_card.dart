import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyWalletCard extends StatelessWidget {
  const MyWalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
          color: MyColor.darkPurple2, borderRadius: BorderRadius.circular(40)),
      child: Stack(
        children: [
          Positioned(
              left: 32, child: SvgPicture.asset('assets/svg/Ellipse 4.svg')),
          Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset('assets/svg/Ellipse 3.svg')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style:
                        MyTypography.textMedium.copyWith(color: Colors.white),
                  ),
                  Text(
                    '\$ 1.200',
                    style:
                        MyTypography.headingLarge.copyWith(color: Colors.white),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card',
                    style:
                        MyTypography.textMedium.copyWith(color: Colors.white),
                  ),
                  Text(
                    'Mabank',
                    style:
                        MyTypography.headingLarge.copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
