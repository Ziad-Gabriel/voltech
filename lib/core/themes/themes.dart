import 'package:flutter/material.dart';
import 'package:voltech/core/constants/colors/app_colors.dart';
import 'package:voltech/core/constants/colors/color_scheme.dart';
import 'package:voltech/core/constants/text_styles/text_styles.dart';

class Themes {
  static ThemeData get light=>ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightBackground,
    colorScheme: AppColorScheme.light,
    textTheme: TextStyles.textTheme,
  );
  static ThemeData get dark=>ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,
    colorScheme: AppColorScheme.dark,
    textTheme: TextStyles.textTheme,
  );
}