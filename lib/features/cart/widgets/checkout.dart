import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  final List<String> moneyType = const [
    'Subtotal',
    'Promo Code',
    'Estimated Tax',
    'Express Delivery',
  ];
  final List<double> amount = const [3097, 200, 0, 0];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: Borders.navBarRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: 330,
          padding: AppPadding.mainAll,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(2),
            borderRadius: Borders.navBarRadius,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow.withAlpha(86),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],

            border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withAlpha(40),
              width: 1.5,
            ),
          ),
          child: Column(
            spacing: 4,
            children: [
              Expanded(
                child: Column(
                  children: List.generate(
                    4,
                    (index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          moneyType[index],
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Text(
                          amount[index].toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: Theme.of(context).textTheme.titleMedium),
                  Text(
                    '3297.00',
                    style: Theme.of(context).textTheme.titleMedium!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ],
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 38),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: Borders.secRadius,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.secondary
                          .withAlpha(40),
                      offset: Offset(0, 0),
                      blurRadius: 24,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      'Proceed to Checkout',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 20,
                      weight: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
