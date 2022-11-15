import 'package:ewallet_demo/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/my_color.dart';

class NewNotification extends StatelessWidget {
  const NewNotification({super.key});

  @override
  Widget build(BuildContext context) {
    List<NotificationModel> list = List.of(listNotif);
    return Expanded(
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: list.length,
          itemBuilder: (BuildContext context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 20),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
              child: Container(
                margin: const EdgeInsets.only(right: 20, bottom: 10),
                padding: const EdgeInsets.only(
                    left: 20, top: 10, bottom: 10, right: 24.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: const Color(0x33E5E5E5)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x80E5E5E5),
                      offset: Offset(7.0, 7.0),
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].date,
                            style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: MyColor.gray3,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            list[index].title,
                            style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            list[index].subTitle,
                            style: const TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 11,
                              color: MyColor.gray3,
                            ),
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset(list[index].type != 'in'
                        ? 'assets/svg/Arrow - Bottom.svg'
                        : 'assets/svg/Arrow - Top.svg')
                  ],
                ),
              ),
            );
          }),
    );
  }
}
