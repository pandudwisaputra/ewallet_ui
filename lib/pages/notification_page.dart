import 'package:ewallet_demo/common/my_color.dart';
import 'package:ewallet_demo/common/my_typography.dart';
import 'package:ewallet_demo/widgets/my_newnotification.dart';
import 'package:flutter/material.dart';

import '../widgets/my_recentnotification.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Notifications',
                style: MyTypography.headingMedium.copyWith(
                  color: MyColor.darkPurple3,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'New',
                    style: MyTypography.textMedium.copyWith(
                      color: MyColor.darkPurple1,
                    ),
                  ),
                ),
                const NewNotification()
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Recent',
                    style: MyTypography.textMedium.copyWith(
                      color: MyColor.darkPurple1,
                    ),
                  ),
                ),
                const RecentNotification()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
