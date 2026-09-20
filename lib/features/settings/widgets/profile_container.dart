import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/elevation.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: AppPadding.mainAll,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: Borders.mainRadius,
        boxShadow: [customElevation(context)],
      ),
      child: Row(
        spacing: 6,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: Center(
              child: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.primary,
                size: 50,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ziad Yahia',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  'ziad@example.com',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Icon(Icons.edit_outlined),
        ],
      ),
    );
  }
}
