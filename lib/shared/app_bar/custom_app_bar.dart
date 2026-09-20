import 'package:flutter/material.dart';
import 'package:voltech/shared/search_bar/custom_search_bar.dart';

AppBar get customAppBar {
  final controller = TextEditingController();
  return AppBar(
    title: CustomSearchBar(controller: controller),
    centerTitle: true,
    toolbarHeight: 80,
    scrolledUnderElevation: 0,
  );
}
