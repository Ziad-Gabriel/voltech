import 'package:flutter/material.dart';
import 'package:voltech/features/cart/view/cart_view.dart';
import 'package:voltech/features/home/view/home_view.dart';
import 'package:voltech/features/settings/view/settings_view.dart';
import 'package:voltech/shared/app_bar/custom_app_bar.dart';
import 'package:voltech/shared/bottom_nav_bar/main_bottom_nav_bar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int screenIndex = 0;

  final List<Widget> mainScreens = const [
    HomeView(),
    CartView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      body: mainScreens[screenIndex],
      extendBody: true,
      bottomNavigationBar: MainBottomNavBar(
        onTap: (index) => setState(() => screenIndex = index),
        currentIndex: screenIndex,
      ),
    );
  }
}
