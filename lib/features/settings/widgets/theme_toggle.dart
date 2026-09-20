import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/elevation.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  int themeIndex = 2;

  final List<String> titles = const ['light', 'dark', 'system'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              spacing: 6,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withAlpha(40),
                    borderRadius: Borders.secRadius,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.palette_outlined,
                      color: Theme.of(context).colorScheme.primary,
                      size: 24,
                    ),
                  ),
                ),
                Text(
                  'Appearance',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            padding: AppPadding.miniAll,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: Borders.secRadius,
            ),
            child: Row(
              spacing: 6,
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: Borders.secRadius,
                    child: InkWell(
                      onTap: () => setState(() => themeIndex = index),
                      borderRadius: Borders.secRadius,
                      hoverColor: Theme.of(context).colorScheme.primary
                          .withAlpha(220),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOutBack,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: index == themeIndex
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.primary
                                    .withAlpha(0),
                          borderRadius: Borders.secRadius,
                          boxShadow: [
                            customElevation(context).copyWith(
                              color: index == themeIndex
                                  ? customElevation(context).color
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            titles[index],
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(
                                  color: index == themeIndex
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(context).colorScheme.onSurface,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
