import 'package:flutter/material.dart';

import 'app_colors.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData.light().copyWith(
    //Colors
    scaffoldBackgroundColor: AppColor.lightWhite,
    primaryColor: AppColor.blue,

    primaryColorDark: AppColor.deepBlue,
    canvasColor: AppColor.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColor.lightGrey,
      inversePrimary: AppColor.lightBlue,
      error: AppColor.red,
      background: AppColor.lightBlack,
    ),
    textTheme: _textTheme(),
  ),
  AppTheme.dark: ThemeData.dark().copyWith(),
};

TextTheme _textTheme() {
  return ThemeData.light().textTheme.copyWith(
        titleLarge: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColor.white,
        ),
        titleMedium: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.lightGrey,
        ),
        titleSmall: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColor.lightGrey,
        ),
        bodyLarge: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColor.white,
        ),
        bodyMedium: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: AppColor.lightBlack,
        ),
        bodySmall: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: AppColor.lightBlack,
        ),
        displayLarge: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColor.blue,
        ),
        displayMedium: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColor.lightBlack,
        ),
      );
}
