import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/padding.dart';
import 'package:voltech/features/products_list/view/products_list_view.dart';
import 'package:voltech/shared/main_container/main_container.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  final List<String> titles = const ['Smart Phones', 'Laptops', 'Tablets'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (mainIndex) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: AppPadding.mainHorizontal,
              child: Row(
                children: [
                  Text(
                    titles[mainIndex],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Spacer(),
                  Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductsListView(type: mainIndex),
                        ),
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
              height: 225,
              child: ListView.builder(
                itemCount: 10,
                padding: AppPadding.miniAll,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, secIndex) => Padding(
                  padding: EdgeInsets.only(right: secIndex != 9 ? 8.0 : 0),
                  child: MainContainer(
                    width: 150,
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
                          '${titles[mainIndex]} name',
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
            ),
          ],
        ),
      ),
    );
  }
}
