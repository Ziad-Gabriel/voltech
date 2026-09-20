import 'package:flutter/material.dart';
import 'package:voltech/core/constants/colors/app_colors.dart';

class TextStyles {
  static TextStyle get titleStyle => TextStyle(fontFamily: 'BarlowCondensed');
  static TextStyle get bodyStyle => TextStyle(fontFamily: 'Geist');

  static TextTheme get textTheme => TextTheme(
    titleLarge: titleStyle.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    titleMedium: titleStyle.copyWith(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    titleSmall: titleStyle.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
    ),
    bodyLarge: bodyStyle.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),
    bodyMedium: bodyStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    ),
    bodySmall: bodyStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
    ),
    labelLarge: bodyStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      overflow: TextOverflow.ellipsis,
      color: AppColors.lightShadow,
    ),
  );
}
