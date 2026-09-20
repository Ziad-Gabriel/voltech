import 'package:flutter/material.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('My Cart', style: Theme.of(context).textTheme.titleMedium),
        Container(
          height: 20,
          width: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '3 items',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
        Spacer(),
        Icon(Icons.delete_sweep_outlined),
        Text('Clear All', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
