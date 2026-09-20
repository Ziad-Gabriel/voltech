import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/padding.dart';
import 'package:voltech/features/cart/widgets/cart_header.dart';
import 'package:voltech/features/cart/widgets/checkout.dart';
import 'package:voltech/features/cart/widgets/products_cart_list.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(padding: AppPadding.mainHorizontal, child: CartHeader()),
              Expanded(
                child: Padding(
                  padding: AppPadding.mainHorizontal,
                  child: ProductsCartList(),
                ),
              ),
            ],
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: Checkout()),
        ],
      ),
    );
  }
}
