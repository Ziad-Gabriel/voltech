import 'package:flutter/material.dart';

BoxShadow customElevation(BuildContext context) => BoxShadow(
  color: Theme.of(context).colorScheme.shadow,
  offset: Offset(0, 1),
  blurRadius: 2,
);
