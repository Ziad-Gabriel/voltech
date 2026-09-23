import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/padding.dart';
import 'package:voltech/features/settings/widgets/account_orders.dart';
import 'package:voltech/features/settings/widgets/language_toggle.dart';
import 'package:voltech/features/settings/widgets/logout_button.dart';
import 'package:voltech/features/settings/widgets/profile_container.dart';
import 'package:voltech/features/settings/widgets/theme_toggle.dart';
import 'package:voltech/shared/main_container/main_container.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Padding(
        padding: AppPadding.mainHorizontal,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(height: 12),
            ProfileContainer(),
            SizedBox(height: 12),
            Text('Preferences', style: Theme.of(context).textTheme.bodyLarge),
            SizedBox(height: 4),
            MainContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ThemeToggle(),
                  Divider(
                    color: Theme.of(context).colorScheme.shadow,
                    height: 30,
                  ),
                  LanguageToggle(),
                ],
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Account & Orders',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 4),
            MainContainer(child: AccountOrders()),
            SizedBox(height: 12),
            LogoutButton(),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
