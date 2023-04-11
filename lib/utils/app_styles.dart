import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyle {
  static const textWhiteF25 =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w700);
  static const textGreyF20 = TextStyle(
      fontSize: 20, color: AppColors.grey, fontWeight: FontWeight.w700);
  static const textGreyF22 = TextStyle(
      fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.grey);

  static const textWhiteF30 = TextStyle(
      fontSize: 35, fontWeight: FontWeight.bold, color: AppColors.white);
  static const textWhiteF24 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white);
  static const textGreyF15 = TextStyle(
      height: 3,
      fontSize: 15,
      color: AppColors.grey,
      fontWeight: FontWeight.w700);
}
