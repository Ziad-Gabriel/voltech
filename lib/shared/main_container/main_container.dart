import 'package:flutter/material.dart';
import 'package:voltech/core/constants/layout/borders.dart';
import 'package:voltech/core/constants/layout/elevation.dart';
import 'package:voltech/core/constants/layout/padding.dart';

class MainContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  const MainContainer( {this.height, this.width,this.child ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height ,
      width: width,
      padding: AppPadding.mainAll,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: Borders.mainRadius,
        boxShadow: [
          customElevation(context)
        ]
      ),
      child: child,
    );
  }
}