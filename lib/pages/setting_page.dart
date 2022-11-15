import 'package:ewallet_demo/widgets/my_menusetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/my_color.dart';
import '../common/my_typography.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Setting',
                style: MyTypography.headingMedium.copyWith(
                  color: MyColor.darkPurple3,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Image.asset('assets/png/Profile Picture.png'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jaka Joko',
                      style: MyTypography.headingMedium.copyWith(
                        color: MyColor.darkPurple1,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('assets/svg/edit-2.svg')
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                MyMenuSetting(
                  assetIcon: 'assets/svg/link.svg',
                  name: 'Connected Account',
                ),
                const SizedBox(
                  height: 10,
                ),
                MyMenuSetting(
                  assetIcon: 'assets/svg/security-safe.svg',
                  name: 'Privacy and Security',
                ),
                const SizedBox(
                  height: 10,
                ),
                MyMenuSetting(
                  assetIcon: 'assets/svg/key.svg',
                  name: 'Login Settings',
                ),
                const SizedBox(
                  height: 10,
                ),
                MyMenuSetting(
                  assetIcon: 'assets/svg/message-question.svg',
                  name: 'Service Center',
                ),
                const SizedBox(
                  height: 38,
                ),
                SvgPicture.asset('assets/svg/trash.svg'),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Delete Account',
                  style: MyTypography.headingMedium.copyWith(
                    color: MyColor.purple,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
