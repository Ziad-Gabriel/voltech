import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/shared/bottom_nav_bar/nav_buttons.dart';

class MainBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const MainBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: Borders.navBarRadius,
        
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: Offset(0, -1),
            blurRadius: 4,
          ),
        ],
      ),
      child: NavButtons(currentIndex: currentIndex, onTap: onTap),
    );
  }
}
