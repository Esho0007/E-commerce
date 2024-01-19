import 'package:bootcamp_practice/common/style/theme/textFieldTheme.dart';
import 'package:flutter/material.dart';

import '../color/colors.dart';
import 'appBarTheme.dart';
import 'bottomSheetTheme.dart';
import 'checkBoxTheme.dart';
import 'chipTheme.dart';
import 'elevated_button_theme.dart';
import 'outlineButtonTheme.dart';
import 'text_theme.dart';


class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Ubuntu',
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.scaffoldColor,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.lightOutlineButtonTheme,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecoration,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Ubuntu',
    brightness: Brightness.dark,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.blackColor,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    outlinedButtonTheme: AppOutlineButtonTheme.darkOutlineButtonTheme,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecoration,
  );
}
