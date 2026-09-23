import 'package:flutter/material.dart';
import 'package:voltech/features/products_list/widgets/list_header.dart';
import 'package:voltech/shared/app_bar/custom_app_bar.dart';

class ProductsListView extends StatelessWidget {
  final int type; // 0 for phones, 1 for laptops, 2 for tablets
  const ProductsListView({super.key, required this.type});

  final List<String> titles = const ['Smart Phones', 'Laptops', 'Tablets'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [ListHeader()],
      ),
    );
  }
}
