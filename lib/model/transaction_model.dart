import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionModel {
  Widget assetIcon;
  String title;
  Color color;
  String subtitle;
  String price;

  TransactionModel(
      {required this.assetIcon,
      required this.title,
      required this.color,
      required this.subtitle,
      required this.price});
}

List<TransactionModel> listTransaction = [
  TransactionModel(
      assetIcon: SvgPicture.asset('assets/svg/paylater.svg'),
      title: 'Paylater',
      color: const Color(0xFF24BEEF),
      subtitle: 'Buy item',
      price: '\$ 5'),
  TransactionModel(
    color: Colors.black,
    assetIcon: Image.asset('assets/png/netflix.png'),
    title: 'Netflix',
    subtitle: 'Month subscription',
    price: '\$12',
  ),
  TransactionModel(
      assetIcon: SvgPicture.asset('assets/svg/paylater.svg'),
      title: 'Paylater',
      color: const Color(0xFF24BEEF),
      subtitle: 'Buy item',
      price: '\$ 5'),
  TransactionModel(
    color: Colors.black,
    assetIcon: Image.asset('assets/png/netflix.png'),
    title: 'Netflix',
    subtitle: 'Month subscription',
    price: '\$12',
  ),
  TransactionModel(
      assetIcon: SvgPicture.asset('assets/svg/paylater.svg'),
      title: 'Paylater',
      color: const Color(0xFF24BEEF),
      subtitle: 'Buy item',
      price: '\$ 5'),
];
