import 'package:flutter/material.dart';

import '../common/my_color.dart';
import '../common/my_typography.dart';
import '../model/transaction_model.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    List<TransactionModel> list = List.of(listTransaction);
    return Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                  backgroundColor: list[index].color,
                                  child: list[index].assetIcon),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    list[index].title,
                                    style: MyTypography.textMedium
                                        .copyWith(color: MyColor.darkPurple1),
                                  ),
                                  Text(
                                    list[index].subtitle,
                                    style: MyTypography.textSmall
                                        .copyWith(color: MyColor.gray3),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            list[index].price,
                            style: MyTypography.textMedium
                                .copyWith(color: MyColor.darkPurple),
                          )
                        ],
                      ),
                    );
                  }),
            );
  }
}