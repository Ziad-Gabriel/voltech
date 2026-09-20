import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/elevation.dart';
import 'package:voltech/core/constants/layout/padding.dart';
import 'package:voltech/features/products_list/view/products_list_view.dart';

class HorizontalList extends StatelessWidget {
  final String title;
  const HorizontalList({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: AppPadding.mainHorizontal,
          child: Row(
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyLarge),
              Spacer(),
              Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductsListView()),
                  ),
                  borderRadius: BorderRadius.circular(50),
                  hoverColor: Theme.of(context).colorScheme.primary
                      .withAlpha(220),
                  child: Padding(
                    padding: AppPadding.miniAll,
                    child: Row(
                      children: [
                        Text(
                          'See All',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.arrow_forward_ios_rounded, size: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 222,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: 150,

              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: Borders.mainRadius,
                boxShadow: [customElevation(context)],
              ),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: Borders.secRadius,
                    ),
                    child: Icon(Icons.image, size: 50),
                  ),
                  Text(
                    'phone name',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    '150,000 EGB',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
