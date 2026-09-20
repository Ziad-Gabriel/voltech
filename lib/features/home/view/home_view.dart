import 'package:flutter/material.dart';
import 'package:voltech/features/home/widgets/categories.dart';
import 'package:voltech/features/home/widgets/horizontal_list.dart';
import 'package:voltech/features/home/widgets/top_banner.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: SizedBox(
        child: ListView(
          children: [
            TopBanner(),
            SizedBox(height: 10),
            Categories(),
            SizedBox(height: 10),
            HorizontalList(title: 'Smart Phones'),
            SizedBox(height: 10),
            HorizontalList(title: 'Laptops'),
            SizedBox(height: 10),
            HorizontalList(title: 'Tablets'),
          ],
        ),
      ),
    );
  }
}
