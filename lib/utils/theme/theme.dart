import 'package:flutter/material.dart';
import 'package:mobilechat/utils/constants/colors.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      background: AppColors.bacGrey,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.tertiary,
      inversePrimary: AppColors.inversePrimary,
    )
  );
}