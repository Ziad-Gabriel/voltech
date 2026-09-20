import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class LanguageToggle extends StatefulWidget {
  const LanguageToggle({super.key});

  @override
  State<LanguageToggle> createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  int isArb = 0;
  final List<String> titles = const ['EN', 'عر'];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
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
                Icons.language_outlined,
                color: Theme.of(context).colorScheme.primary,
                size: 24,
              ),
            ),
          ),
          Text('Language', style: Theme.of(context).textTheme.titleSmall),
          Spacer(),
          Container(
            height: 40,
            width: 110,
            padding: AppPadding.miniAll,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              spacing: 4,
              children: List.generate(
                2,
                (index) => Expanded(
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                      onTap: () => setState(() {
                        isArb = index;
                      }),
                      borderRadius: BorderRadius.circular(50),
                      hoverColor: Theme.of(context).colorScheme.primary
                          .withAlpha(220),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          color: index == isArb
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.primary
                                    .withAlpha(0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            titles[index],
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(
                                  color: index == isArb
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
