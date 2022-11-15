import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/pages/home_page.dart';
import 'package:ewallet_demo/pages/notification_page.dart';
import 'package:ewallet_demo/pages/stats_page.dart';
import 'package:ewallet_demo/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ValueNotifier<int>(0);
    var pages = const [
      HomePage(),
      StatsPage(),
      NotificationPage(),
      SettingPage()
    ];

    return Scaffold(
      body: Stack(alignment: AlignmentDirectional.bottomStart, children: [
        ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (context, _, __) => IndexedStack(
            index: selectedIndex.value,
            children: pages.map((page) => page).toList(),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(24, 0, 24, 50),
          height: 78,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: MyColor.darkPurple1,
            borderRadius: BorderRadius.circular(30),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                onPressed: () {
                  selectedIndex.value = 0;
                },
                icon: SvgPicture.asset('assets/svg/wallet.svg')),
            IconButton(
                onPressed: () {
                  selectedIndex.value = 1;
                },
                icon: SvgPicture.asset('assets/svg/chart.svg')),
            IconButton(
                onPressed: () {
                  selectedIndex.value = 2;
                },
                icon: SvgPicture.asset('assets/svg/notification-bing.svg')),
            IconButton(
                onPressed: () {
                  selectedIndex.value = 3;
                },
                icon: SvgPicture.asset('assets/svg/setting.svg'))
          ]),
        ),
      ]),
    );
  }
}
