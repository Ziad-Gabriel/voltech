import 'package:flutter/material.dart';
import 'package:voltech/core/constants/colors/app_colors.dart';

class AppColorScheme {
  static ColorScheme get light => ColorScheme.light(
    brightness: Brightness.light,
    surface: AppColors.lightBackground,
    onSurface: AppColors.darkBackground,
    onPrimary: AppColors.lightContainer,
    primaryContainer: AppColors.lightContainer,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.lightTertiary,
    shadow: AppColors.lightShadow,
    // error: AppColors,
    // onError: AppColors,
  );
  static ColorScheme get dark => ColorScheme.dark(
    brightness: Brightness.dark,
    surface: AppColors.darkBackground,
    primaryContainer: AppColors.darkContainer,
    onSurface: AppColors.lightBackground,
    onPrimary: AppColors.lightContainer,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    tertiary: AppColors.darkTertiary,
    shadow: AppColors.darkShadow,
    // error: AppColors,
    // onError: AppColors,
  );
}
