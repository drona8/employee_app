import 'package:flutter/material.dart';

import 'app_colors.dart';

enum AppTheme {
  light,
  dark,
}

final appThemeData = {
  AppTheme.light: ThemeData.light().copyWith(
    //Colors
    scaffoldBackgroundColor: AppColor.white,
    primaryColor: AppColor.blue,
    primaryColorDark: AppColor.deepBlue,
    canvasColor: AppColor.lightWhite,
    colorScheme: ColorScheme.fromSwatch(),

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
      );
}
