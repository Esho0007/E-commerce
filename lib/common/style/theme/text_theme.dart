import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color/colors.dart';



class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    /// Header TextStyle
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.blackColor),

    headlineMedium: const TextStyle().copyWith(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),
    headlineSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),

    /// Title TextStyle
    titleLarge: const TextStyle().copyWith(
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),
    titleMedium: const TextStyle().copyWith(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.blackColor),

    bodyLarge: const TextStyle().copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.blackColor),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),

    labelLarge: const TextStyle().copyWith(
        fontSize: 32.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.blackColor),
    labelMedium: const TextStyle().copyWith(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),
    labelSmall: const TextStyle().copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.blackColor),
  );
  static TextTheme darkTextTheme = TextTheme(
    /// Header TextStyle
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: AppColor.whiteColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: AppColor.whiteColor),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: AppColor.whiteColor),

    /// Title TextStyle
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: AppColor.whiteColor),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.whiteColor),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.whiteColor),

    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.bold, color: AppColor.whiteColor),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.whiteColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.whiteColor),

    labelLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: AppColor.whiteColor),
    labelMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: AppColor.whiteColor),
    labelSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: AppColor.whiteColor),
  );
}
