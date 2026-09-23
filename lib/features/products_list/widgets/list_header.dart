import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.mainHorizontal,
      child: Row(
        spacing: 6,
        children: [
          IconButton(
            onPressed: () {},
            icon: Column(
              children: [
                Icon(
                  Icons.filter_alt_rounded,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 32,
                ),
                Text('Filters', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Column(
              children: [
                Icon(
                  Icons.sort,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 32,
                ),
                Text('Sort', style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 45,
            width: 100,
            padding: AppPadding.miniAll,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 35,
                  child: Icon(
                    Icons.view_list_rounded,
                    color: Theme.of(context).colorScheme.onSurface,
                    size: 20,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.grid_on_rounded,
                      color: Theme.of(context).colorScheme.onSurface,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
