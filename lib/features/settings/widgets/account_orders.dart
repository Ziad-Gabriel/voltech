import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';

class AccountOrders extends StatelessWidget {
  const AccountOrders({super.key});

  final List<IconData> icons = const [
    Icons.favorite_rounded,
    Icons.my_location_outlined,
    Icons.history_outlined,
    Icons.credit_card_outlined,
  ];

  final List<String> titles = const [
    'Favorites',
    'Addresses',
    'Order History',
    'Visa',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        4,
        (index) => Row(
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
                  icons[index],
                  color: Theme.of(context).colorScheme.primary,
                  size: 24,
                ),
              ),
            ),
            Text(titles[index], style: Theme.of(context).textTheme.titleSmall),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
