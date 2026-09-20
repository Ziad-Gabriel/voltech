import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  final List<IconData> icons = const [
    Icons.phone_android_outlined,
    Icons.laptop_outlined,
    Icons.tablet_outlined,
  ];
  final List<String> titles = const ['Smart Phones', 'Laptops', 'Tablets'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.mainHorizontal,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories', style: Theme.of(context).textTheme.bodyLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              3,
              (index) => Column(
                spacing: 4,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: Borders.mainRadius,
                    ),
                    child: Center(child: Icon(icons[index])),
                  ),
                  Text(
                    titles[index],
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
