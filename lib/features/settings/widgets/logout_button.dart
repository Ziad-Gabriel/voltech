import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: AppPadding.mainHorizontal,
      decoration: BoxDecoration(
        color: Colors.red.shade700.withAlpha(80),
        borderRadius: Borders.mainRadius,
      ),
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.logout_outlined, color: Colors.red.shade700),
          Text(
            'Logout',
            style: Theme.of(context).textTheme.titleSmall!
                .copyWith(color: Colors.red.shade700),
          ),
        ],
      ),
    );
  }
}
