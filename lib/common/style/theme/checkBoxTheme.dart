// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/colors.dart';



class AppCheckBoxTheme {
  AppCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      checkColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? AppColor.whiteColor
            : AppColor.blackColor,
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? AppColor.primaryColor
            : AppColor.transparent,
      ));

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      checkColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? AppColor.whiteColor
            : AppColor.blackColor,
      ),
      fillColor: MaterialStateProperty.resolveWith(
        (states) => states.contains(MaterialState.selected)
            ? AppColor.primaryColor
            : AppColor.transparent,
      ));
}
