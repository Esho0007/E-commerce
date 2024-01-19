// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../color/colors.dart';


class AppChipTheme {
  AppChipTheme._();
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AppColor.disabledColor.withOpacity(0.4),
    labelStyle: TextStyle(color: AppColor.blackColor),
    selectedColor: AppColor.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: AppColor.whiteColor,
  );
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: AppColor.disabledColor.withOpacity(0.4),
    labelStyle: TextStyle(color: AppColor.blackColor),
    selectedColor: AppColor.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: AppColor.whiteColor,
  );
}
